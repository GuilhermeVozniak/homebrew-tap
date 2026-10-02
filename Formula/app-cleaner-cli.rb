class AppCleanerCli < Formula
  desc "Terminal cleaning suite for caches, logs, and leftover app files"
  homepage "https://app-cleaner.vozniak.dev/"
  url "https://github.com/GuilhermeVozniak/app-cleaner/releases/download/v1.7.0/app-cleaner-cli_1.7.0_darwin_universal.tar.gz"
  sha256 "a043e3134fc965fa6cd9f67b43e9c6ba37e6c1ae900d77cdd2e6f4efcd4e1816"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "app-cleaner"
  end

  test do
    assert_match "app-cleaner version #{version}", shell_output("#{bin}/app-cleaner --version")
  end
end
