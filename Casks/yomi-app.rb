cask "yomi-app" do
  version "0.5.15"
  sha256 "4ecede7ea69a9e1121b19a9cbc6d6ccb54f5c13018ddf0fc544d90d03bb48f4a"

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
