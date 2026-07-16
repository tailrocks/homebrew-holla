# source-sha: 47f9bfd5e4030efbac1aee044316ce462ddb032b
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.82+47f9bfd"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "7e0003af517a60a1d32d213fdedde83e8bd72574f6db954a2d22127a533631f7"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "9ca94a3e4557150241856af940ce268efc5fc4996f0f9570dd367f3d2ac1667c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6f103c78f8373538182e1a66faa68c1271319f66730288a58e16f171f7b1301"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e1a5dc56b1a378a8daa5c715f33a04f13f082425ebf06dde8b91d69bf16f46fd"
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
