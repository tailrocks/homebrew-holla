# source-sha: a23cbbfa27edb9cc18ef55f8060e5de770dcb1ad
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.123+a23cbbf"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "28630350020cba03c372f0e4f735b91511050990a02afacf17e427d60d4a187a"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "7bf3120cc7641a4515bb69b15983b3caccccca37d128d3b5706d1b67e901fd31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ac7596b24ad3bec5426d63110ce191df7e4172c5d5747e1eeee41137f7056fa2"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "962c76d6fdf121c1bbf66a15a44f1b8eabe0d75fc815a2ca9c69ff6e0b6e212d"
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
