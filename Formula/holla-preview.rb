# source-sha: c66ed11d132a1b9e7d7fbf8f2506df3af1078638
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.121+c66ed11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "cf24f889f4c214e51b9d8b87142c25ae881d24ecc932d507d95c21c9e8c948ad"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "6ccbb74d60871b874b8b0f84098d5b23f0bc21b587397ac057c1fcd84579414a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e2820054f138fc5185fa128f14fd05f6a552c344b679d710bc1103475ea62940"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b8e8cd2e0bff01e30ae7e6a986a61a0d86783384896eb836ef129b119f53ade"
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
