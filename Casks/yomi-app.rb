cask "yomi-app" do
  version "0.7.55"
  sha256 "508d68ddced60b389c369d15919c469ba2f7de4105da106621fe3e9f06c4c586"

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
