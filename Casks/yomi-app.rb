cask "yomi-app" do
  version "0.7.13"
  sha256 "976986caa27c7b2be3681fb64015974f4a6b9d632a8c1185075b0eae473ef088"

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
