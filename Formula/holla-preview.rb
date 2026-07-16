# source-sha: 6d61fc5b6f7671770dfe6c303bc9617280a85476
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.73+6d61fc5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "9467af9ab8a304f4a2f5ec9479ea209fd2ccdff148173aef6bf90a97d0c37754"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "da751752a7f2df33d481a1ffcff80cef3f0ce6138f9f1d5a0c9ad158bd9fe85c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "07bf4539d56734f4a541e5db699db8a7905b4c0b668befd74a385622e4c95347"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "12b0309890b8573bb8a211761acc8c4875681a0a0a18292dbae109056ed8610e"
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
