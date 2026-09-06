cask "yomi-app" do
  version "0.10.25"
  sha256 "1b25a439213fc65dc28d463dc73499e7eeb072151260f8b2120e89439ef679f8"

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
