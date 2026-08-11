cask "yomi-app" do
  version "0.7.70"
  sha256 "d7a732e6ae6e9d64552ffcf8260298c78fa1956cd8dd9bd39979aaa863b41964"

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
