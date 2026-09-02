cask "yomi-app" do
  version "0.10.11"
  sha256 "8c8013818a4f1dcf85cb4f83afca586bef2c0c9f16df0431bd095953300fd2d0"

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
