cask "yomi-app" do
  version "0.7.56"
  sha256 "77013f7f1bae1baff8e0eb7603ea4a930332ceb6acf6a3d4a1b61c569b6727db"

  url "https://github.com/Crescent617/yomi/releases/download/v#{version}/Yomi_#{version}_aarch64.dmg"
  name "Yomi"
  desc "AI coding assistant with GUI"
  homepage "https://github.com/Crescent617/yomi"

  app "Yomi.app"

  zap trash: [
    "~/.yomi",
    "~/Library/Logs/yomi",
  ]
end
