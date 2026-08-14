cask "yomi-app" do
  version "0.7.80"
  sha256 "3b46b919c0c3fecc1a738f5666d1c01628514b5fbe2002c8b328767f5f8f0b69"

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
