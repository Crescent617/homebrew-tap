cask "yomi-app" do
  version "0.7.74"
  sha256 "1e4b1d6216f5a3f52db9501e7c4099681f065522a3e61a59a780490381ce3c8f"

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
