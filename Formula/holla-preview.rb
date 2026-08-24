# source-sha: ac82850621bf554b7585dba25e16033ec54fca5b
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.3-preview.256+ac82850"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "cc70a77c521745ba70ae99b0d1e42b03f3a209992ebfa879d5675f4175d435ac"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "737faf5e11cd612a193bca9a7887884bacdb8e5d93d593aaf27c98c8c314f79e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d13cf5ab2a008615fafb39efdb6a2dc41088bec4b1e69f097936163cc430fc4"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "804b8c4076ac9fefb9d5715126438ce6703262ab24372813087b98c0c351b128"
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
