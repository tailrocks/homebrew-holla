class Holla < Formula
  desc "Adaptive dev environment CLI — adapts to what you have installed"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v1.0.0/holla-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "5f7ded3e53a0d0d1a581d6cbff8d65617eb88c3dcde1511172f1f3eaee37c92d"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v1.0.0/holla-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "1fd08094108c4a4df98589549cf4765eeca516416a0c68952589c4240d8fd33f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v1.0.0/holla-1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c74b773418301e1f46bb614b532ea1be802e45f75074034aa35ff93a3cd9823"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v1.0.0/holla-1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "63078bc0fc410ef8d9c95f5b0b6061b57179e68f7cf85974de506095a0e371d0"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holla --version")
  end
end
