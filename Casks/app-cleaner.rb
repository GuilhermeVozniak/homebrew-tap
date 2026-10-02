cask "app-cleaner" do
  version "1.7.0"
  sha256 "8a6c4be8eac358787a344932f99b54c699a4af3a04e95fe7d2c2cd3f2a44a398"

  url "https://github.com/GuilhermeVozniak/app-cleaner/releases/download/v#{version}/app-cleaner_#{version}_darwin_universal.dmg"
  name "App Cleaner"
  desc "Cleaning suite for caches, logs, and leftover app files"
  homepage "https://app-cleaner.vozniak.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app replaces its own bundle in /Applications through its in-app
  # updater, so `brew upgrade` leaves it alone unless run with --greedy.
  auto_updates true
  depends_on macos: :big_sur

  app "App Cleaner.app"

  uninstall quit: "com.guilhermevozniak.appcleaner"

  zap trash: [
    "~/Library/Application Support/AppCleaner",
    "~/Library/Caches/com.guilhermevozniak.appcleaner",
    "~/Library/HTTPStorages/com.guilhermevozniak.appcleaner",
    "~/Library/Preferences/com.guilhermevozniak.appcleaner.plist",
    "~/Library/Saved Application State/com.guilhermevozniak.appcleaner.savedState",
    "~/Library/WebKit/com.guilhermevozniak.appcleaner",
  ]
end
