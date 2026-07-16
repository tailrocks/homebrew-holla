# source-sha: c0b1c52d49e2f96021424aeced18710070c77174
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.107+c0b1c52"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "ac6d5ff5522bce242a8abe55c2e9e27dfb85abddbcdbad0a4ecaabc66452323c"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "8909e4294318a763b876ab901250d868cc820b9c9b4037d4ebae69a968b386f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec0cb0fd19203a9bbdae977da34220ce82a7952fa34ff48e8de5c98ea8be9187"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e4c967cf33f70822b017ca7d71ae2c3689bef3a7f08a372b5ee2eba18c020c1"
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
