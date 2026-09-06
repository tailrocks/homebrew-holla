# source-sha: fca7d0cc41e139014900e1876a4ab30f126cddda
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.3-preview.285+fca7d0c"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "a0c3db0ae4ab06ce9c0aaeb42c3a5bb1c3c8557d17e2affc15bc23353ac6337c"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "f7d0fd19ea59ae7a97a2c11f4c8431c528647ca5066e758a126d51d8d2e4053e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc82332df08756d6fa35fbf2c6881d8a6ff18067cf69db7d761c1af48f1159c7"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a923a88e45e7890ddc703ee0920156e32c3d493101cc8e9c73d8400c1ba44df"
    end
  end

  conflicts_with "tailrocks/holla/holla", because: "preview and stable install the same binary"

  def install
    bin.install "holla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holla --version")
  end
end
