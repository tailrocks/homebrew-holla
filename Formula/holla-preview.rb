# source-sha: 50c29039a5dfe68250997067c9b9285d1528a3e0
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.72+50c2903"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "629801d5cfcef329bbf6bc9a7cdf866dc39d69f20b6ed1ce482ff583fad8afe3"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "9c28ee6e4757dac3ff6325864af25e5e94a400e79e5de170038b65dd6322a5c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "04b39cf3d73331d22f1d3b574989973f2ad734ad2e23aa88fd37fe777ba77f18"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "427371cb7750eb15f9b50f6f1b16c94384306f20a84dc97c8121b050e368e46c"
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
