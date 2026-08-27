cask "yomi-app" do
  version "0.9.22"
  sha256 "a01b2f544f83410dec6c1f7b6a166de2707153b5861aae21ccb177f2b1d57571"

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
