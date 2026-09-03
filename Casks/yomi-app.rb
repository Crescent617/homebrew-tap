cask "yomi-app" do
  version "0.10.14"
  sha256 "99dcabdb8b5a1a37bd763a86d31f6c5726dac7b321ce80d596d91935f1d5aeed"

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
