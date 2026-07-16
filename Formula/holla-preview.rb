# source-sha: 4a113ce9fe28fb49f95efa18150e0e302d9148e3
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.68+4a113ce"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "46e6657714bfded2ad0a44c9b44e08e0e0b4dfd1f12a0e6171599629d6b5a7b6"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "5456402a2846b6fcc0eabd2a493c3560ae3dc6ee16e6935aa4e4c5e49cb58145"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba67862f917dc76232479546a56c7f9c253da593124c300724b748a479907de3"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b40a00d97b67412c087911dd0db1fd65ad17245e2a965ab3ca2dde961e5cac34"
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
