# source-sha: b4df635eba4d46cae84e2f0492aa0b3d0287e8a1
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.3-preview.217+b4df635"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "991e19583e1dca27b4366e225d430a8b487a941b8a3ffeab1d95caf4381b6911"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "aa0b1ae4b3eef89aa8fff6404819686e16a0f4691039cda22867892aac2f3468"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5659193dc7c5106b06dbef83185289722f68db8cc47c314f83bfc4654fbce3d7"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ede8d7c7101739d962d96dd07907fde4f677ca0baaf1d17ad07fffce212c3d7"
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
