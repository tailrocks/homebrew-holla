# source-sha: 3b4b31508ab1865549915b61e4bbaf68145cc64f
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.99+3b4b315"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "88e0250779a95277bb18236ee5a52a95c86153c584c08cb869a110a90fa8b586"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "914b75752a76f616d31628d6e8788b6c7deb0e2a3d631c23b843c4bf60bd6ba3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "721752daeba6600a83ac5cd6adaf8ac87686a6099100f368dfc6be647d92df48"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "81768f6f802365f5feab3cd17de6c23a1b7bf2d2a17b6a20143f5c5f96230149"
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
