cask "yomi-app" do
  version "0.7.5"
  sha256 "a846f4fbb3a353a6552d9f47a8f8bf7aa2468ca668c7b75d19e74ec249209b23"

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
