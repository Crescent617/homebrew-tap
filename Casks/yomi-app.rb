cask "yomi-app" do
  version "0.10.33"
  sha256 "9af9ce01017678e32ca08d3c26153b744f4d3a393084746d31c200c364387cfd"

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
