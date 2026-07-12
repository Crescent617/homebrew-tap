cask "yomi-app" do
  version "0.5.5"
  sha256 "1f917fc1b6205a6fc1e951e8742f15db73951b0dc58e7ca8a46d92ee9ff4c189"

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
