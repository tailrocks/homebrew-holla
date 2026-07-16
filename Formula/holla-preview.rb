# source-sha: 7b2c0f7d0d306cac194778c735dbf202efac9ddc
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.89+7b2c0f7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "0344276df078809b6d15676d58081810fa6438def2f519fdebe3aba56917bd96"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "9de5ec918ba080be23f657c435c0fbe045be59410ff3e22f0c1339e74d2b54b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2507c8d4df359b1dd989e25b00b14202f00365e111238c44a720ff44bae7bf8f"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6f3cef9fc737c16b672e4a17bc3cbaa89f03e9d608442511362234ecb162aacf"
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
