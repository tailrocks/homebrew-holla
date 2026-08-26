# source-sha: a8e2c11bf018a0c21d5797fbaf8c8a32870632c8
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.3-preview.267+a8e2c11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "aad935da6924b369b879159706f5d7dcb337f2587fc606f8f9874dc8f130eda0"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "cb1f516d1c46a1fbaff6fe3a32da847d2b9723c7ad2bfd79e5d9cc0000d1ae3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c0bd2f642434b79e516ba87b2b3a60d1fa12b68f52cc49dbc03be9bd0e75aadf"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3672b1dfbd6673a206568905a2314bd63d3daa31600ec951963e198672573a63"
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
