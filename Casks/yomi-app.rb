cask "yomi-app" do
  version "0.4.4"
  sha256 "08e7bee596fba567684f2e9bfe1e6496793693ac7db8eee1230a99422d422385"

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
