class AppCleanerCli < Formula
  desc "Terminal cleaning suite for caches, logs, and leftover app files"
  homepage "https://app-cleaner.vozniak.dev/"
  url "https://github.com/GuilhermeVozniak/app-cleaner/releases/download/v1.7.0/app-cleaner-cli_1.7.0_darwin_universal.tar.gz"
  sha256 "402fa100e48e74857bd8d651b1a1e31ef292d1b9619d2899e02f8b373a620735"
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
