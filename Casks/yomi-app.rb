cask "yomi-app" do
  version "0.6.0"
  sha256 "ecbbb1abcb9218a9d2ce62a0a1d1ae7591822b86bddc83d78c1654d4aef1e568"

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
