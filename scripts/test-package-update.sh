#!/usr/bin/env bash
set -euo pipefail

root=$(cd "$(dirname "$0")/.." && pwd)
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
cp -R "$root/Formula" "$root/scripts" "$tmp/"
mkdir "$tmp/verified"
version=9.8.7
assets=()
i=0
for target in aarch64-apple-darwin x86_64-apple-darwin aarch64-unknown-linux-gnu x86_64-unknown-linux-gnu; do
  i=$((i + 1))
  name="holla-${version}-${target}.tar.gz"
  printf 'fixture-%s\n' "$target" > "$tmp/verified/$name"
  digest=$(sha256sum "$tmp/verified/$name" | awk '{print $1}')
  assets+=("$(jq -cn --arg name "$name" --arg sha256 "$digest" '{name:$name,sha256:$sha256}')")
done
printf '%s\n' "${assets[@]}" | jq -s --arg version "$version" '{version:$version,assets:.}' > "$tmp/verified/release-manifest.json"
jq -n '{source_repository:"tailrocks/holla",source_ref:"refs/tags/v9.8.7"}' > "$tmp/verified/identity.json"
(
  cd "$tmp"
  VELNOR_VERIFIED_PACKAGE_DIR="$tmp/verified" scripts/package-update.sh
)
grep -q 'version "9.8.7"' "$tmp/Formula/holla.rb"
test "$(grep -c 'releases/download/v9.8.7/holla-9.8.7-' "$tmp/Formula/holla.rb")" -eq 4
for item in "${assets[@]}"; do
  grep -q "$(jq -r .sha256 <<<"$item")" "$tmp/Formula/holla.rb"
done
