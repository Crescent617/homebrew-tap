cask "yomi-app" do
  version "0.7.36"
  sha256 "bd67c1a065195aaa2142b5fcbdd9ce8bbb2a05d8b0e57266ba62cf27d6050226"

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
