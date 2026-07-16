# source-sha: 74f16a263d414708969962f113e1e88d36ad8c39
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "0.1.0-preview.117+74f16a2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "9269096aa223a2be015834c25e91054ce5e4e3ab6b72ddb1f0fbe251954d5cf9"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "a7765efe686b25d28cb3e8a04ae44f0bcb6cbe20c1974537d3315a1340a87303"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7d3a5f5c1c54e610e3c305da233eb178ab73886ba5f2bdcea8855fc85273bfca"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c4e038aa7ab88595a2d0d6c515905c27fa7f41a9521c7990dbf2291048838d43"
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
