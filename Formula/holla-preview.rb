# source-sha: ba5f3ea133048925d874fc7b4a669864b058ffc6
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.87+ba5f3ea"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "2e37ef30a76762c8fd4da944957b3e1ab00832ee17b4e23c8ea75ac930305021"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "6384ea3d9d698b418f6037e69a5f100383a14d2271f7b9a45a9cac5ff6a1756f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d6e45d323f79c069bc8e907d5d0dfaf7aa028560a4be04e811e9980f235d923f"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8fe07926f5bb9c8832c9222a33d133821ea771409f3835693889bf76fb09c3c"
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
