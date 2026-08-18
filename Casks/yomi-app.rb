cask "yomi-app" do
  version "0.7.99"
  sha256 "d754eb7ec4600b9e3902f528e66a295bf8b422486d981012daae878333b4a9fa"

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
