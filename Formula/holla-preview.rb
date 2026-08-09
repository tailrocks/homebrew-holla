# source-sha: 0c63a9cf43b2a8b5584f1cb1e6a854cefed82ceb
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.172+0c63a9c"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "264f842e1062e9056750f7d026737b7f25aed9fff4eb14b40a744c5a05c56b0a"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "5195082c0f054ab531f1b93c89745120786c00af94ab575ab88b9af230a86648"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e946a539fc89bb063936c608c33c813d0333b854aa3b7a0e5e5913b00be73953"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7f551851c1e3309510209b5c987a43478a0cdd57b8a9b23e0c5f06cb147bfcd4"
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
