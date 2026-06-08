class Holla < Formula
  desc "Adaptive dev environment CLI — adapts to what you have installed"
  homepage "https://github.com/tailrocks/holla"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v0.3.1/holla-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "a5960538edc3f69af066e8f456f60eb78259152ecc472d12336572f3e92ee73d"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v0.3.1/holla-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "616bab9105b18cfd24a9648c284cd6311b94a22e8287c0d9a82e9f3f9ce1c84b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v0.3.1/holla-0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "12edf248efead9517d98e0372971127854bc8edcac721b4c9074b0ec7262aab3"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v0.3.1/holla-0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f185b6d27e708b96727e27c03c825ebba4079eea885dbe5e2d62e387e43951a6"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holla --version")
  end
end
