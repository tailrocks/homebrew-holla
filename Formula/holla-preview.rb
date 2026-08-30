# source-sha: 1ba601a1e263c095471238910b38a4d1798b31a9
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.3-preview.280+1ba601a"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "bd6e9e6c50172b3c6095a31b17574c3d17db2d4164fc82dbdc3b5d9adb72bae6"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "3ff7a091aa32aa94c9189a503798f4ca8d6086e362aed75613aac2a71ba0fc26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28ec5781932535ce708fee93700fc259c6ded4da6d45b2f7ed03dd0d214af111"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c40660ff484e4a2233afe474dbcd1d51ed7f3a10b76fc6432b2d0645f7995053"
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
