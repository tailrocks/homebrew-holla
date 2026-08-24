# source-sha: 2e264f5cf872be647ad6e886e356c04aeab37974
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.3-preview.252+2e264f5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "9f113c3831841ad8f37af1e3d12251719872bddd560870b1fc10a1a21f9d3784"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "188ca11d4055466aa1a46809cf1e52197e61198d03f329fe199364a0eaaca224"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2782db2bf4c2e92c648f7f4ea6369116ee3700560a52e19c21c88ebccdb77c33"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f27822c598dbace7f7b5af3fd77a914c1c88caec662cf1be5ff0e77235fbd9ea"
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
