cask "yomi-app" do
  version "0.2.29"
  sha256 "358724a624f3dc3933097302c21cb4d0bc1fdaae847c5b5a606289ec055d10c0"

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
