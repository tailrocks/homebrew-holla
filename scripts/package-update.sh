#!/usr/bin/env bash
set -euo pipefail

verified=${VELNOR_VERIFIED_PACKAGE_DIR:?missing VELNOR_VERIFIED_PACKAGE_DIR}
manifest="$verified/release-manifest.json"
identity="$verified/identity.json"
jq -e '.source_repository == "tailrocks/holla" and (.source_ref|test("^refs/tags/v[0-9]+[.][0-9]+[.][0-9]+$"))' "$identity" >/dev/null
version=$(jq -er '.version|select(test("^[0-9]+[.][0-9]+[.][0-9]+$"))' "$manifest")
tag="v$version"

asset() {
  local target=$1
  local name="holla-${version}-${target}.tar.gz"
  test -f "$verified/$name"
  jq -er --arg name "$name" '[.assets[]|select(.name==$name)]|select(length==1)|.[0].sha256' "$manifest"
}

mac_arm=$(asset aarch64-apple-darwin)
mac_intel=$(asset x86_64-apple-darwin)
linux_arm=$(asset aarch64-unknown-linux-gnu)
linux_intel=$(asset x86_64-unknown-linux-gnu)
test "$(jq '[.assets[]|select(.name|endswith(".tar.gz"))]|length' "$manifest")" -eq 4

sed \
  -e "s/^  version \"[^\"]*\"/  version \"$version\"/" \
  -e "s#releases/download/v[^/]*/holla-[^-]*-aarch64-apple-darwin#releases/download/$tag/holla-$version-aarch64-apple-darwin#" \
  -e "s#releases/download/v[^/]*/holla-[^-]*-x86_64-apple-darwin#releases/download/$tag/holla-$version-x86_64-apple-darwin#" \
  -e "s#releases/download/v[^/]*/holla-[^-]*-aarch64-unknown-linux-gnu#releases/download/$tag/holla-$version-aarch64-unknown-linux-gnu#" \
  -e "s#releases/download/v[^/]*/holla-[^-]*-x86_64-unknown-linux-gnu#releases/download/$tag/holla-$version-x86_64-unknown-linux-gnu#" \
  -e "0,/sha256 \"[0-9a-f]*\"/s//sha256 \"$mac_arm\"/" \
  Formula/holla.rb > Formula/holla.rb.next

# Replace remaining checksums in platform order without depending on old values.
awk -v a="$mac_arm" -v b="$mac_intel" -v c="$linux_arm" -v d="$linux_intel" '
  /sha256 "[0-9a-f]+"/ { n++; v=(n==1?a:n==2?b:n==3?c:d); sub(/sha256 "[0-9a-f]+"/, "sha256 \"" v "\"") }
  { print }
' Formula/holla.rb.next > Formula/holla.rb
rm Formula/holla.rb.next
