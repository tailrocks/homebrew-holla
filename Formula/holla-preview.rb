# source-sha: c2237c42e01edfe00a59727b76b4cec2f9971980
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.3-preview.213+c2237c4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "89c1efd22952e62774dc859c3c04fda79efb8c3ebe4e7e8e45b17544fc70e751"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "ecd575a37899408dab97bd456668bce9b6ad8d081db2079a6cef2ea949b58897"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "61953cc894df03cab83f4b09b60e942e39194f9ca85d49c1eecbc06986512910"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9fe572c780cf52d88c3bd2e5736f69e9c847b9c8bab29b5d8cfff7edaca2eeda"
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
