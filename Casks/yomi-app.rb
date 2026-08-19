cask "yomi-app" do
  version "0.8.1"
  sha256 "291bc7fae1ee5f1c1ade83ec27e1d6a454bfb61dc5de5a7b3cbb54e6bf76a280"

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
