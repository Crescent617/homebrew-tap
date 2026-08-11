cask "yomi-app" do
  version "0.7.72"
  sha256 "3d2e2d53f91c42adc7a3be7637ed1367959a27aabb72fc814cc8514a6c7086cb"

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
