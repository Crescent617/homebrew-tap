cask "yomi-app" do
  version "0.7.38"
  sha256 "0c9021eb9b19a893c59e104f58f0f91a86b7fada89121ed6525af35eb9812759"

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
