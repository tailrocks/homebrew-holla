# source-sha: 0162127f3fbba1f17e8c7834958e750faac344c6
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.3-preview.278+0162127"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "7fc88f4385e1e8d99e7cc23eccfe0aeaae38d6900bb8dfef87db16ffdc9d4b1d"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "1337d508930781edb59bf8f64d87caf9b80ab459acf4a924a806ae6afeacca77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "981b0c7ddb48789f8fb007b3f208789237837526b48e3a9ace2872626be45416"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dc5509c70c2f89a5e49e87470be2251e29b0f78e4e234bcd7825e3827968eda1"
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
