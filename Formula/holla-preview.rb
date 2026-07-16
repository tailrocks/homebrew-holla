# source-sha: c20e483d8109b38ede1bc7ba82a3341f757796d0
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.108+c20e483"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "8c5899baa4965ae788d34e92bbd313b5b013dcbdd44bbbc6fe423bb3660d9f9a"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "a77f9457e054e6256f815e7f33fec3db5a5c58b378e861cb756bf909df2900e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9ef05ebbc6ceb3c3910b54e4a038b6bfe3ae09a67541d7c79ae4e1913682d456"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99d3734f9b2abf738472bdd822f320401a3a3e6b786c990da45f09c38708d753"
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
