cask "yomi-app" do
  version "0.2.51"
  sha256 "7b79fb74f8d8cb64bc505ab37998427a26ad9c8b18f170f697da24773349fd65"

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
