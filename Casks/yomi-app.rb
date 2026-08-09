cask "yomi-app" do
  version "0.7.61"
  sha256 "15e82ab411ee3c0cef74a60f224c62f5423356c5d4e3677731ba46fd2c74294e"

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
