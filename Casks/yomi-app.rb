cask "yomi-app" do
  version "0.7.94"
  sha256 "3c5b8f8209d519b2ab76d08531c311c0ed90c1a106d5df5c90430e0e9fa9b165"

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
