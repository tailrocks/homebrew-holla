class Holla < Formula
  desc "Adaptive dev environment CLI — adapts to what you have installed"
  homepage "https://github.com/tailrocks/holla"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v0.3.0/holla-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "55679381307413c892b107396783642d605a28d0659841f230f524c2208502ae"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v0.3.0/holla-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "3708b8238e5ec97552faed46eda26aa483d3373c6c8c7177531dc3290c50ad57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v0.3.0/holla-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c808923631dbc21b5fe57a995cfb1bcfb2dac31253267e7861844ff399b780dd"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v0.3.0/holla-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b2f99650b9325f7a4a0fa37b4aa5e6849789fc39a1564b2bec5e59e5761e9ae1"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holla --version")
  end
end
