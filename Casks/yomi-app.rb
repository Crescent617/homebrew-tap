cask "yomi-app" do
  version "0.5.24"
  sha256 "a1e8b433aa22963a47bf0390166a33bd611533553409ff0509c5e7a9008eca90"

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
