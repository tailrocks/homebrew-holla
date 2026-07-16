# source-sha: cc3aceef4c43bdb984efd8b5b294393911fb3be5
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.124+cc3acee"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "33cb31ebea7b9f0eebbafe9d1ce4b5b129e8b58d41cb6c4c414b0a09fb47760b"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "c5834195c18a75453b078c636735331d0adaa9a0ebf856754e7c7f13f6a6f48d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "da307cfec46b0a0309abb8adb0bc0a4e027ea59a24adb0178add6381c7f514aa"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c5d50da83f92d2638b07792dea1b249669850f59007559e0d27d46bdbf31187e"
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
