# source-sha: 503cf56c87a48b010cfcd64ddd6971d75c74e4bd
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.76+503cf56"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "87fb5cdb667eb5fa732b657ec12c6907fae3f10cdd9d3554f4ba63bbdc1719c5"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "bab7c4d1a634dc9801f07bea41d83b5e2019abaabf7c214de7417703fbed9230"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc82726367faccf7f25acbeaa98350a6f038751f9223fade9d0ce1d82112919f"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f5d96956a5ba6be1dab5dfc452945745a9e7b4eccf930f4f0a118245f3dde52a"
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
