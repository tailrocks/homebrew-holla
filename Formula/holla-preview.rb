# source-sha: 2bdde8b11b920d05a35188abab690ffecb59dad3
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.3-preview.266+2bdde8b"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "5dc6381b59b52e673a5aeeb44169899fb6fcb09ba88fc66f83f3a1f1b694c900"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "bbe251bf1e68c76d3924a36c788e8634489d28c12bd0f7b35d57069ee017059f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f93c5ebeab214ec4706862e7d853f89dc4214cb67a22f78e7898dd62eda06339"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "654d27173423eb6c42654042c2762cb72f8d3b274142f836fae7cb7ffe10a448"
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
