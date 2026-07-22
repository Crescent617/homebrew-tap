cask "yomi-app" do
  version "0.6.17"
  sha256 "048c5860e9823ec199ec8f1421cdadb5b1cc5c24f8be5bd1ddf59d093220c62e"

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
