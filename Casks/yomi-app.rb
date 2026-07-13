cask "yomi-app" do
  version "0.5.9"
  sha256 "0b566581a22b10ca63ac17783c33fcf5bf501c020bf312cb3563bd75b7b6c546"

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
