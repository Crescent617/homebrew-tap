cask "yomi-app" do
  version "0.7.27"
  sha256 "6c4d63a32bfa29a8728f338a4f86bbc02f13113cef692acfb92a095268175c03"

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
