# source-sha: dc28bca4a84dc94195a18989ef259e05571fb745
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.101+dc28bca"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "da1d325dcf6c9308ced78b87cb06ddbbb166d955ec8a4f3af53c9978a7af89ec"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "3a0ba9f9fc64b9cdfe46994231642ec2bda808264ddd12de8ff3a4107bbd49d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7dd84b51f21e2c0fa80ca6a888d892210fde0faf99eace983592b9b155447ec1"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc4319ba1a04454fba1efefd2f9d0bd3b8d9d7ede7c55f33c90225245a083ce7"
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
