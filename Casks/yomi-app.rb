cask "yomi-app" do
  version "0.7.57"
  sha256 "9fb32d7c9a5d0fabb20c83b7a5d8be138148de15157bf4d9e6164f7b35e4a114"

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
