cask "yomi-app" do
  version "0.7.2"
  sha256 "2b4e04c0a242daaf2ee60a0eeec4bdd858dc60839eb87a6e11c0ec675e492646"

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
