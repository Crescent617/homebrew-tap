cask "yomi-app" do
  version "0.7.20"
  sha256 "b8c4c60d8b13d017b4a61cc11dbe1f2e9143ca1a9236ff78617fc6109b6f8227"

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
