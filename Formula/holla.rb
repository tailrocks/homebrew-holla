class Holla < Formula
  desc "Adaptive dev environment CLI — adapts to what you have installed"
  homepage "https://github.com/tailrocks/holla"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v0.2.0/holla-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "fa022b6d19414a594c77cbd4ac1c19cd6dc206c8c385140cadb7aac6980f5a11"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v0.2.0/holla-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "22733f1fedc1603921415100d8e2544e24e4c1a85747f94fc2cd11c33fea28f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v0.2.0/holla-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed148c8acb0cada4dbbcc9ee99bf539d7b1ed06bd94602d041704cf1cff25ebf"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v0.2.0/holla-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "08bdc23a46bbee7b6ad1960fc2b03220a759af91618eb8b63e7a8a394a964bf6"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holla --version")
  end
end
