# source-sha: 27d0fbb1e3659f8cc432a90995c83801bd44dff5
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.0-preview.64+27d0fbb"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "8e10f32051d33a2650a2057d382e7883e698f15a21f3b33aca54fb640fe2aead"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "0bfd3fa2fe382e85fb6ade885cae0986d373ef7b5fc1049890e2e4a625230a53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d7ac9d2e9f7b6e0d73a47270a21a43324cf89c0a110f48599b8c884cb05cddfa"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "672cd2716a042cc30eeface756ac3f0de0a5ee71ae43013592e2a77f732c8988"
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
