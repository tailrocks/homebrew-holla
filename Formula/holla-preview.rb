# source-sha: 5b045d8ced2e898941a841b59c98d224dd182abd
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.91+5b045d8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "e62877910620d1d273af5ae97652e1fc3b913e5c5b1263aaa5ae53efe088914c"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "a97b3e4d8c06f14c59b288d76cab5d53bfbf7d83c73f0d6b5d7c53768f6eafd0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5e17f4e25cedafc074eb7604eedbed08a1bbc403c5732d649ba7ad82d3e0ccf"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9718f375ee1cd394f0d782533d7451b81cd9dd9357346c01d0a809cba115443"
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
