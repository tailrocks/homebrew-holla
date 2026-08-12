class Holla < Formula
  desc "Adaptive dev environment CLI — adapts to what you have installed"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v1.0.3/holla-1.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "c494b819e61146866201d8566f0f5a7f37b9496c357074c9ecffd933b6882303"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v1.0.3/holla-1.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "f53eaafa21bcd323dee987a222420406165b43b4e440e0a79a659ec7259677f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v1.0.3/holla-1.0.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4f014c6eef42421572cc56047f5041f66839df7b1a39e0b9c1b4b8990ce69e8c"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v1.0.3/holla-1.0.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ebfafa5913324d781537c022d025b32ec84d5f0458a5f39c1ab9576849c4c52e"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holla --version")
  end
end
