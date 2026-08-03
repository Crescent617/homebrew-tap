cask "yomi-app" do
  version "0.7.41"
  sha256 "ec6897b093fd5e5d1236ef6e18099a68e57a75670fc8687016981b409d5bb6cb"

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
