class Holla < Formula
  desc "Adaptive dev environment CLI — adapts to what you have installed"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v0.1.0/holla-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "cbc0addea841549ab7740034bfc4045381b816df2a2b379f28497bbbf6f44224"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v0.1.0/holla-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "ab6471832d84371dfe6d57e1132147389e128631583300e0ebbff3d0fab57e9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v0.1.0/holla-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d5545b9a1483bb8fee6ba41fd06e342daf2846fd9502fd613c3317c995a93f9"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v0.1.0/holla-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0e854e8d7cd5dc9020f9f9651083aa36072d2a9e4a4d6c63ca8f09a6440c2a6"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holla --version")
  end
end
