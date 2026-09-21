cask "yomi-app" do
  version "0.10.37"
  sha256 "0f4a3a2bd97789063c2de39ee6e68606848451f491e3879b3b91bfe19ea12499"

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
