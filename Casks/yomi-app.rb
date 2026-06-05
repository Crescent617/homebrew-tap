cask "yomi-app" do
  version "0.2.28"
  sha256 "83e69bcbf340722a1e8e8b9df2c7fce7632892b59b61908f45ab2626b9dea103"

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
