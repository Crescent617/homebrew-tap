cask "yomi-app" do
  version "0.9.19"
  sha256 "60429b01395cfcd86e8ab5702363798572af1cf18fcc9b5642d84edee125af7f"

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
