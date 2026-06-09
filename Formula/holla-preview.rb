# source-sha: b3deedb58b41ab32a2b3fb1e6fdb0e99b8c95c11
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.4.2-preview.51+b3deedb"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "4982025b10bff321da74f010b29e1bdbde0acec66f0ce9fddcdda7bd1f0bf18d"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "e40dbad274d47e9ebb9004cabe65ddede7e1ad4d12f42fc3ab956b1a2216abb0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed8fb52544d4a0f6faa9c20b26eefad833ed5f9b458f24fe638d26c4cefb34ca"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a2bd5f7f292d013893cb3dc80a144116e28024eff55b1d220dcc82bf615f103"
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
