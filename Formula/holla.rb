class Holla < Formula
  desc "Adaptive dev environment CLI — adapts to what you have installed"
  homepage "https://github.com/tailrocks/holla"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v1.0.0/holla-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "1dfc319a61ddffd8c63c6faf9617380d65877aa71e4c9a2066b632d4864b1276"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v1.0.0/holla-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "23aa171c1522ba6f2362e91449cf251e625b0fbcd4bbd89815ba544c3e893acb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tailrocks/holla/releases/download/v1.0.0/holla-1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dcc3997ef253b361731609b6464cdaf3f867397ea5336c61fe4f2ec57e97d500"
    end
    on_intel do
      url "https://github.com/tailrocks/holla/releases/download/v1.0.0/holla-1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ae0868b3e2ab3d68beb30ee6bb70c1ca3d5613e62b2371222b85976fad23034"
    end
  end

  def install
    bin.install "holla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holla --version")
  end
end
