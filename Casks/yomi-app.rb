cask "yomi-app" do
  version "0.3.3"
  sha256 "c979e4889d3076f69a4d905f39a67fd036d97465f776c04bedb1b5c4da0f11cf"

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
