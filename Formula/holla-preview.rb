# source-sha: 8183e7d3d2a7d88a5e02a53d996a60a04c5dae30
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.4.2-preview.55+8183e7d"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "8607b8e0d67cfcb130c1f3e44d95d372d0086889cbd2432b5fe0be0c41a5c761"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "e1137beb8486d747a3c9d01f21b5bf40a5aea011c9763077f6d7d4ce77f35f82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "406b8648e56d0c0d53446a6e3550a3eaccd4db846216dc895257a4d44e703285"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "298122dc339d798630356a7c0f6240b3d728a31512ee67e21410ce3ca3cf83a3"
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
