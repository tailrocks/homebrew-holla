# source-sha: a9be70951599b345650f419b7f4b667bf916b436
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.74+a9be709"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "314e8ba6d90a7cc2a910e190f1a5707a3582318836505aec9f1791e46829068c"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "3e19961e7e3348ddc94c43cb32bac2538cc951c446cd0b656fd18fad14a51fa9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cee7b1f5b6c5b9761be140c39bcee33c8b8924e8cf971105ce766a0ccb3d906b"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6aae64ad162048675bb7616c1fed81e3283d9ea380f260aaa55ef3e371d80e23"
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
