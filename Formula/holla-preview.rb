# source-sha: 13517512835121aace764dd35857cb57f965135d
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.95+1351751"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "6563a21327bf1a04d4f15efab82364dd5e7a2c4c551b52befc911e04f44a5ac5"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "6678627a6e38fc0a8dd4957f7d3cfea2a1287e720cb9a46a1d59b74d737dcfbf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd8bc5512349218554420d4d78b23a20e902c57fdf94c510a38ce9745b55b749"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c1837155d1f1b46595e61cdb2e30045b182972357da24b0af6b9809e9812ee4"
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
