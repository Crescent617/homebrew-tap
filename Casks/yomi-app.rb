cask "yomi-app" do
  version "0.9.6"
  sha256 "5284c08177f956a543a9fb98474a06874f2c0f11822f862e0a5b3a41dc8ddf55"

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
