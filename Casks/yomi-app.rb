cask "yomi-app" do
  version "0.7.46"
  sha256 "5dcb75ab4e721672f33578a094682f2da389c2fc622bdfc6af7ea7c8f3d2e30d"

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
