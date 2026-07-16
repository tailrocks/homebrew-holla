# source-sha: 2572197dc384a0e3357c5beb938656c5c81c1ed3
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.75+2572197"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "6fddc18f14dff43885a7053c18820bbff25d255a27a4f94fd02aa5bc0ad2e246"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "4ded50c9688131a7fb6fde4d038b9682fe7fb4db6d7bb230136ef0b820e2191a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1514aab857f44df56588c13bdf069428466b01cb8821549951982ee85a30e9b8"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e6ea558e52a7eb71381cfb2ed41f964e8c0bf0300690e3cbcf65b28f3075c58"
    end
  end

  conflicts_with "tailrocks/holla/holla", because: "preview and stable install the same binary"

  def install
    bin.install "holla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holla --version")
  end
end
