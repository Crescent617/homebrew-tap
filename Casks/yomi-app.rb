cask "yomi-app" do
  version "0.6.14"
  sha256 "c23b2e6966e745b5a0023170b0ee180a6e3076a558c9e473a3327e072ed0216d"

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
