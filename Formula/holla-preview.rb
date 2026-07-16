# source-sha: c2681a154fa278c81402f39cc196448579c52e48
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.81+c2681a1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "957397d13e4c8ddd9de94a7cc57fc819ffb3dea3a1cc76bde096fb95022a2785"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "0458ef71b21950f4c49dbdd1df053722b4d6b2ea76dd01dc20a4ba41a9a93231"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b6ad1eb879a7018ec9360adc07d1e975f1466a7a80bf021abf059a249e46eb6"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b6edffca50db3948847a19293152b288dd1f3a62ca799ae9aeb95d58324c1374"
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
