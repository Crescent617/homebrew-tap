cask "yomi-app" do
  version "0.7.98"
  sha256 "152709eccd8b8f39a0111365dc5c2054b7e9ebc6e45e8e7abc5fe0ecdce7c20b"

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
