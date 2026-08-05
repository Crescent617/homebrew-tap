cask "yomi-app" do
  version "0.7.52"
  sha256 "f95b0426c3223fc048b74841f9eb6b497dcc19589f2e86a7a6b1e137c41f0235"

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
