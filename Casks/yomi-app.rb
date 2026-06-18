cask "yomi-app" do
  version "0.2.43"
  sha256 "025bb774e8eaf4591152444600c73be3459014fde3cf8fdb6df4703eb8401acc"

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
