# source-sha: 27d0fbb1e3659f8cc432a90995c83801bd44dff5
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.0-preview.64+27d0fbb"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "f95d0942dc80b1269cd615375d68becb5baea09243e121b225ac0b0b317f023c"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "06ace30bc6872557fb1fe190a2358c5ba8ecb2a5bb64602188481c6019c8a079"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6672b7e5605c23c2eb65a1c3e944bc061448e10c3aa482f1c0d90a46ba44ae8d"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d3af009c1ed262b7014732c9a942c321fd00b135bf2a436fd149132cfd33459"
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
