# source-sha: ea74326f32476dd9f6c888edd725beb4fb08b03d
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.167+ea74326"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "6cdf7afd1af423b6c175b65d4826ef2375913b348579e2e6565547bf398835b1"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "58994f06c113d696985da5448a8a4e9008a24aa9340335d7e91b9229f4b7c03e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6d4f240b3dca8a77e8a16c34ba8058edc0edcfc50d2c39b37fba4cb2cd9fd09"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f66114a700c2b0ee4ba23935062dca5bd9d13bcaea6aee57934aaa2052facf9a"
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
