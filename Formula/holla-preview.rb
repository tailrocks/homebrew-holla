# source-sha: 553c27f275c05c2a663eb81a89a6ceff68c6845e
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.70+553c27f"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "a2383d787f992b9ff6dc263d1141c1f7a371a7f3a182664f0592a1bfacabf97b"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "3f5f8dec2798de6df7534381db79f6abcfd4ac3c5de3d9e1a37942cd8cbdaedf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "43f01b77f3f187d5e33ae663dd38c6d3402e5f7918c3787b6cc3f9d6899788b1"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ad49456c6f85631b2ab473b7b06beac3f59c53a66a51f86ef9c0a18ee962b6f"
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
