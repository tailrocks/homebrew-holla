# source-sha: 564e3de3c5044689aba906e197bbf926c38bbdb7
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.3-preview.227+564e3de"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "92d770d49a82dd520dca0a7db96f56830ff0a412e2719a2d10e0553b2ffaa861"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "549d56a80c4ce055b006ce1fc9054ec43ab8bf4fe4a81a7bb7a521d51c9370f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6255b7c472fac935fefe89cf3705796008ef2bf7e8888063660a576c69be2521"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93c023ff5324502e5f7c904fa9b156ae5b1c1e636331f8a2a37e83b46270b71e"
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
