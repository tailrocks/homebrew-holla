# source-sha: 9b1950655c5ba9a179d71439960d210406f0cfbd
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.3-preview.220+9b19506"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "f93e9b0d204489410cda4a6fc668d11356fda33658a72b8b9874364739776b0f"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "2c00e7f0a3e2e2d234ee66f59e7001b1d2aac3b810bc9ae16a06025da5dacafa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2fe11eef77f9b9122ff8afb36761f77279f45802e5c082a8fd5bb1f62a23788a"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "488b1f9f95b1599e7e6e7546f88f88d3e7629c40d26045036b8c655468939406"
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
