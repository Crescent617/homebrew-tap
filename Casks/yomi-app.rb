cask "yomi-app" do
  version "0.7.7"
  sha256 "cf719cc61c8384a7b24c67cbc141f0e89cfbf7172562006bc655489549188295"

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
