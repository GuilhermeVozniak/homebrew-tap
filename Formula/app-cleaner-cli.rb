class AppCleanerCli < Formula
  desc "Terminal cleaning suite for caches, logs, and leftover app files"
  homepage "https://app-cleaner.vozniak.dev/"
  url "https://github.com/GuilhermeVozniak/app-cleaner/releases/download/v1.6.0/app-cleaner-cli_1.6.0_darwin_universal.tar.gz"
  sha256 "83573c1a086917858ef00016c8290101b1208c0fad688cbd1dc000aad693d67f"
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
