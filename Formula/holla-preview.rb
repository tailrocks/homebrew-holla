# source-sha: 9db59f48a5434461340475a3624b46b809de95e8
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.166+9db59f4"
  license "Apache-2.0"

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5954508740b2be9ae5473562a3cda52d96e620b0e6e3def1a71e71662a2295e0"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f20aff24b91a1bccc8bd79d5a659b8def2f93b54dfcdd9331a914f5a6e99b6e"
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
