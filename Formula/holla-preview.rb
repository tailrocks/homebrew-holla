# source-sha: 7148753b157728fba93f313138bf15273fbb237d
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.119+7148753"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "0fe2c9a24b88d2468613162b2d9dccb039af3ca0fa3c6952a0ffd855c1bedf78"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "82a2e1bdb11f588c58c73df1308ff99109194f1d1da4f57e58333ac53aaa5e66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4f717fbb906c44f1294160e207f37ea9d15f035315e85de3e35f1181735af087"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4ea1207822297c5a4ef82bf121f1f47b3dfb68bdc8952de89a38e2b04929cf7b"
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
