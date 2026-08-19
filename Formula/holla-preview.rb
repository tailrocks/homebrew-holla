# source-sha: fbd3d5c4f0bac427506efec5fc076e01bb05b1e6
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.3-preview.238+fbd3d5c"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "776f4deca4fbfb7bbcd2e7cb74eddd41203c5ae9af2ccca64cba5168e84a1bc6"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "78d35a7cd6011b46e236892bc2cdda7c41e83cce7a4e3239548f05f48be857e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9012815296c312c5afd49c889dabb0399968dde641db96ff645267126cbf6888"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45c44ee9479873514c121d8d7682a33b85b17466f35266e6d644681eedad8515"
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
