# source-sha: 6db5d9968602359d0d327102918be04b3d617ac6
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.84+6db5d99"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "030fd2f7dc22060d24be8a8048d529a0b30ca5c80b8ca9c6a17153065e7bc930"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "03acd567d7ee0490144bdcc7a3eb9674d387111046a928df35bf6a3f7550d55c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28746e3e09d8863c21d784c3535bcce1e3bbd6b6ea5726345047c9d29ff81bb4"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9746688da1bc77b2296dec08981ab4c343432962f8b6eb32b07cd7b3fa6e36ea"
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
