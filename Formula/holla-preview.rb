# source-sha: d2a345064e866092d03d8df9ae40d85a9ba7a038
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.3-preview.269+d2a3450"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "5eeae7779ef02077a5b578dce985c42884425ac157af9d101dbe61667d4de8f7"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "e8bab0bccc3240cffb9263ab3a9e19986dc4b63638f0041ab3bfa11d48fc5b8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e786ad78c8009a25df390b0b2f0b106dc3d435b755486572635d8767310200b7"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd3e2ef1717e90b94c5c7e411f258631d35f9b4a13ae26255ea4199b6986def5"
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
