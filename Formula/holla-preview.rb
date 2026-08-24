# source-sha: a598fecdfe3df9032ef308c37147e1e595ceb9e3
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.3-preview.264+a598fec"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "19014ffc5703a6fdd3d58bb77ec8477bd87681b0e73877ecc64fc98c4c221697"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "1ddbddc4ef4847dec56247faa6bf1412dd3ced48236394d21f7c5255e8f5d1de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "79227cbf6803f375ecd8d114b2d0226e5d0c2ea5ad7d6cad0009f3064861a1a0"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e0259488f13cee6e8b18e66ed4aacd16f17ca5cee956a6acf281f1b5a8adcd01"
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
