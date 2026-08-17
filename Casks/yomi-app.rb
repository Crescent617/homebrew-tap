cask "yomi-app" do
  version "0.7.87"
  sha256 "4659852085a928b41db5d4bf80b07400ed1a43268ac3e609d9fe8109061ec7dd"

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
