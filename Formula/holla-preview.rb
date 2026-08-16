# source-sha: 7b78129b67b0e9e506c713750e0276fa281498ce
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.3-preview.232+7b78129"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "9acba87c2bfecc4266b8157143d63c8cf83d03f03a6353cac94ce8c20c5d1d0c"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "97c9fd2e87756cbc283b082eb970d72c3bee1b83e2b9a95eb80d0a5f7e9a52ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "127db7f9ccc21967e45b624198c27853cad2bc23039116ab623b7ceb700d9900"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd5b05f14bd25897c64fed7c10930eb7e7e998c60b50876c385d7bb5c220ee18"
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
