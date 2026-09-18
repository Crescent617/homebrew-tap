cask "yomi-app" do
  version "0.10.34"
  sha256 "a4ce6515707854960edbdd1db71f02aaf850bbfd9fb5ef97000b28d8c3f03579"

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
