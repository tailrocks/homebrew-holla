# source-sha: e33c4b343ae78cf3bf95d79365d1d3a71f4788f3
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.102+e33c4b3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "aa4fe26d10d1e50e7d8754e116968f7cc940f3af1bba5dcbed891691678b705b"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "3219529a708f85931bba0480d95c552e0e64c2eb439547671aa3e9e0efd60777"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b8804eebd2eae10808683aceced5aec9ddd7b67d08d8af873fca969f012f29da"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5143c22009ef51b215ed5ee0dd00083e358801c1289ef8c96c5266cfc010ecb0"
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
