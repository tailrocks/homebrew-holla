# source-sha: 51dcd374d40b630754058da366ad756dc1ac5304
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.104+51dcd37"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "5a8cbbde8bba0c96fdb4f3ad34e5ff7a1e3260ec67f965e8e7363324784c4920"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "ccb7b789145ba41f5e1a5a23cd82d6e9cd675d6a416f6a7afee94895f2558788"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc58074b428667198bb41551754dd2d75f0bce7e5333799b277479ccd3ff0be9"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22499adbbc72977613b237aa2f062ea8c05749589264c7623cbf8dd69b3edec6"
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
