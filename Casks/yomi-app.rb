cask "yomi-app" do
  version "0.6.16"
  sha256 "b675c6d4b996f9d133951f0e8a9ff64dfb09cb0cd4f5a197f299fc05c2c759ed"

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
