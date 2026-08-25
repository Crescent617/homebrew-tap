cask "yomi-app" do
  version "0.9.18"
  sha256 "767ccf089c4dbb02cf43167a5399cfc4257fe07a9c13761494e1ab08a9c7c1a6"

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
