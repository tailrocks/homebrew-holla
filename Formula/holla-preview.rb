# source-sha: 73d5bbbf6e2b68622ae732d14a4cc6b8cc74707e
class HollaPreview < Formula
  desc "Adaptive dev environment CLI — preview build from latest main"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.3-preview.246+73d5bbb"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-apple-darwin.tar.gz"
      sha256 "74f60a4d67095bedd8f5e22021d8c5a0a03c4b84b5c4087f38e5d3c10df5f64b"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-apple-darwin.tar.gz"
      sha256 "8ecb5124e94ff6fb81d74ea926244d4fb4b01ee9a40c70c73e2f794513207600"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "52746bf08251b7caacc16089375a1e76ccf97f02d9f35cd298c9ddc3c26c875d"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/preview/holla-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "01b79dd83254f907d0e28dffba28de4f67a2a613267a932b9e1f033e48a99741"
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
