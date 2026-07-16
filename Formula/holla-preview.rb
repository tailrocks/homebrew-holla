# source-sha: 1e806f78658616fa040b7d5b6ab591afd74b8d09
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.77+1e806f7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "3b377b4fbbc4d86ab05377e075d8d344e9a9973c50276eab82416f2a43b25d48"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "996e1cc2962f2c43c32ed43cab11d47331e7a02df514495a21c8cadb2aac9e90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bae17a761ada84950b2e143dca6e57c691776631571514bf2c8fa8b6b0956c12"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e11e53ac52ce5dd954c4710229ca8750d8b4154962d585cb16b3f8982b477e82"
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
