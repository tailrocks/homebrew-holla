# source-sha: a854258a772e9f7143e1dc7cee3f40fe14cb8f26
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.3-preview.265+a854258"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "2bc33f20a2c38c04f754592feae0f1b9751906acda31065c5014b10c28eab07c"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "11df434aab4e9ea84587f46751bc0472811a963489522926f6a0ac1d66a667ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "291fd63deaa7155769cbea7aa3d82048ba9bb71a1345562a2020f84d3975c355"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8454ab474908eedce969a6d3a642696c7a6fc716db0790f6eec4c16ec880c5de"
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
