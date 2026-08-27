cask "yomi-app" do
  version "0.9.20"
  sha256 "416fc077f5acc1dd4c7f5f1c3e50cb1fda21330434a5de5ee49bf0d081ccb2a7"

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
