cask "yomi-app" do
  version "0.1.0"
  sha256 "7fe24bffc517da99721be30aa3e0af2b17db73a4aaae0dbea8318872abf65935"

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
