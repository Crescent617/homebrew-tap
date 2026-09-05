cask "yomi-app" do
  version "0.10.20"
  sha256 "f2ac25067b2b714cab47e6f33bd4d1abadad8e6eb5ac0d505984d44ef5ed6d62"

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
