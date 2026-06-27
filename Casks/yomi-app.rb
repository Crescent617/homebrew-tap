cask "yomi-app" do
  version "0.2.48"
  sha256 "affbe1a2cfe296e3775feab53b20495b48c9b18138460e8a97bf2f5b1570a46d"

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
