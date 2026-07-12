cask "yomi-app" do
  version "0.5.2"
  sha256 "52dbdd6ebacdbb4c7ae2947745f095ae30073c55d7f7a7f5c728c7198e438cb4"

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
