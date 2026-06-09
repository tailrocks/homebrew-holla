# source-sha: 5e5fc648055cf978046743d500512eec39c1af41
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.4.2-preview.50+5e5fc64"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "85887606d5e15d1e4c93e1b0148e9eb6642d1378f09f49887b5ad4cfb943591b"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "6c87f23d11f9315f90a76eb7fef21cd30b9c7d3dac0854740f92e754626bd357"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed7ec62d6cbc418c84fedc7e5a2008b21eeb701d7e9bc1741bbfaec147e5ea62"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a70a8b3662a78902e6c78e4cef0cf8541cc0f4e8068a8262388bfb19934c46d2"
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
