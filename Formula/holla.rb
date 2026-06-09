class Holla < Formula
  desc "Adaptive dev environment CLI — adapts to what you have installed"
  homepage "https://github.com/tailrocks/holla"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v0.4.1/holla-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "1b6de7f8a6212a93b733b0c01023d7fd16face3dab35698924d97ba7ba8b0191"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v0.4.1/holla-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "6b46bc8fde0fafcc305a79005f8f6da166c7e5c268da720c7ab7c2e0a46cf70b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v0.4.1/holla-0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8796ce083bd33cc713687a36aa3ef4324a390689a746c61e4e9addde1f7dc53d"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v0.4.1/holla-0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0863b66eaa901cdfd02dfa9c01c5b441ee69865506651700274a50374575d4bd"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holla --version")
  end
end
