class Holla < Formula
  desc "Adaptive dev environment CLI — adapts to what you have installed"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v1.0.0/holla-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "4ede690918dc82c92a245735a1099fc8f7d8f62198b82d581ecb915067fc1854"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v1.0.0/holla-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "ba14b4ab8eee105dd1419c00bbb78109a7c2302aeff856f7fdd449ebb84bec88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v1.0.0/holla-1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "47e9e250cc88bc1d605c01c908dadfb4873f1cef504099bffd620b0725ca41d6"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v1.0.0/holla-1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "604b465938c73ae2ef44b120bf74aff7085a22fc03a05044451e6651411e221c"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holla --version")
  end
end
