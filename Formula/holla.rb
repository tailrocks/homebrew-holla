class Holla < Formula
  desc "Adaptive dev environment CLI — adapts to what you have installed"
  homepage "https://github.com/tailrocks/holla"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v0.4.2/holla-0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "cf8310b4b698f7c7d4848d67e4a448e8755b6647e6b02d7d4117cc99e2376f99"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v0.4.2/holla-0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "cc3ae45e4d333b2e3a5a39db8b3e52fb65fee43fe0221ca18cdace3f26ed318d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v0.4.2/holla-0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5a6f87f2bd4afd8ee053a00a76b95faa926262346e91e2e10b74cded11531cd5"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v0.4.2/holla-0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93cf96fd96ce4a5048d4b3545a896e2b70f98f3a09fa31a0adbd663c4c874b4e"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holla --version")
  end
end
