cask "yomi-app" do
  version "0.10.21"
  sha256 "458d33a7e6d1b8963cced1200f6fcc1ab6da5af6e860e75a8a3b920cb296127e"

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
