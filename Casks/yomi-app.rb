cask "yomi-app" do
  version "0.7.89"
  sha256 "dbba8b33471a0ab0bb990b97f80c8d68c5e3da328484f1f90d5cf185b089e3d2"

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
