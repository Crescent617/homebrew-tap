cask "yomi-app" do
  version "0.6.3"
  sha256 "a333181d7b56c8c0a409da166f36999d6bc8a4754da7e33a28f42113715d7ea9"

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
