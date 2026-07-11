cask "yomi-app" do
  version "0.5.1"
  sha256 "bbbb8363e58b443ccdabab62f99342482b32aecd448f975a1f9d54ee31b1c8e4"

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
