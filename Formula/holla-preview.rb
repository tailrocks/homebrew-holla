# source-sha: c7ca155669906e09e336bc62829b3062fff9e2df
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.90+c7ca155"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "11e0b530cb193680d1bbf342e21c3c66c3ea28272fae147ff73bec2892f39a13"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "0de26d8426f852d7a347156ec33cde82e4f16e67431db45e45882e7a032f6150"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8bd3039d7127e97fb9ee2d4187a9e63cf0c2033849a2d7cb1d00dfdb5e14be01"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1349fd4ff5bd5d4467ff321697a62e471332f2f6fb965a6f6fb07a60ebaf4258"
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
