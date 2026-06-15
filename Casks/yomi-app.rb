cask "yomi-app" do
  version "0.2.40"
  sha256 "7a9912fadc709193f64b0438536a6e82eab69dfe214cd8c7016f168e3262577d"

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
