class Holla < Formula
  desc "Adaptive dev environment CLI — adapts to what you have installed"
  homepage "https://github.com/tailrocks/holla"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v0.2.0/holla-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "b556007573688c76e95dbf6cb25a0744a86742911fbea9a9ff5a3abdd2b933bd"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v0.2.0/holla-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "11169b371d2352b5b0a04cb06612c75b62c673071815cf5cd95f1c8da667a821"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v0.2.0/holla-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d2b852d68061f812086751b60903a2bb17f4927e2c4290dc9758a9fff7797e6"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v0.2.0/holla-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3700aaf008b86bfffe91b5e23aed2d244491539d20244f3c25d97401828f32dc"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holla --version")
  end
end
