# source-sha: 0cd850d950e391a07c643b0a010611f545fab0b8
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.78+0cd850d"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "82bab51c21b18da8ad5692ce7dc9c0967a66928d2a2b43f8eca4fa177b5f4e96"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "25fde1ea84448d92806e7909e994b5a1dbf82715032995b4afb25ff36b0a0d92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a529ce6dc650452cc516ebc44d3c053c1d7bf93c4fa0aea4ae424cb3246c3631"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f982f45be8f52b0b1f80b7a3e2679b1db40f63c8de6adab761a7490553bf77c6"
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
