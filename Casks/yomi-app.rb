cask "yomi-app" do
  version "0.7.48"
  sha256 "1852d0286c65f870cf9c309d45e627442b3abab2e77bcc287c6b78fd3730195b"

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
