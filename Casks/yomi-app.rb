cask "yomi-app" do
  version "0.9.13"
  sha256 "e04ee9e25568999b360541383265dc01195d6d419fbdf15f21ee2c4bfbd2c27d"

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
