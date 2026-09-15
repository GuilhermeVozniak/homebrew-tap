cask "tiles-spliter" do
  version "0.1.3"
  sha256 "2252c7ba1af99aedfda8da7f7b2a7ea53cf6f7dcbe9f90ba0fb342e7b1b522a3"

  url "https://github.com/GuilhermeVozniak/tiles-spliter/releases/download/v#{version}/tiles-spliter_#{version}_darwin_universal.dmg"
  name "Tiles Spliter"
  desc "Keyboard-driven window tiling manager"
  homepage "https://guilhermevozniak.github.io/tiles-spliter/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Tiles Spliter.app"

  uninstall quit: "com.guilhermevozniak.tilespliter"

  zap trash: [
    "~/Library/Application Support/tiles-spliter",
    "~/Library/Caches/com.guilhermevozniak.tilespliter",
    "~/Library/HTTPStorages/com.guilhermevozniak.tilespliter",
    "~/Library/Preferences/com.guilhermevozniak.tilespliter.plist",
    "~/Library/Saved Application State/com.guilhermevozniak.tilespliter.savedState",
    "~/Library/WebKit/com.guilhermevozniak.tilespliter",
  ]
end
