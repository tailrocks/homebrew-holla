# source-sha: 8f6b08bfc16ce6b4be8e105b4132fd741df33ddd
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.4.2-preview.62+8f6b08b"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "ab824fb310fcb398f3f3ae9ab867c3df11820c23e2bfe5c9d1a7c9e673239ab5"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "fe22e908b609994edbc7fbe1b9625a55792c37ba7fd51772f351e3da2186f8b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ffc74fc67eabb56d31dd9b68d862c2430f2a5e5c83cbcc923ec7af5b5b367354"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "43d039151d39722cf149f628d69c255384f5e1039be7fcbd67dceb1f14ebe410"
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
