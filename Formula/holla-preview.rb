# source-sha: 2fe12f6f592d6430fca7006990bf138682d92667
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.4.2-preview.56+2fe12f6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "3f84a1ff8d87cdadabfbc495422e20a2b03a86bfe7d9a5e70e83c66ad8a7d8fc"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "b56546fd6110964dc7e1d24ecf094cc243c29eecffb24bfb34d61eb8a0409823"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "84239da84fd1e0e26abe17251acbf12c12c4565f82b4a8c743d5a569e2d98f75"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1b30b40e16c17925264ab00ba2d7bca25ba756abcca73ac4b458f72abdcef0a"
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
