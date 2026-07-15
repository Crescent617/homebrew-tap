cask "yomi-app" do
  version "0.5.26"
  sha256 "3a1c70caa19c402e82557c3ca568396fea4b71b7b3676f5e398d20ad71f4ff58"

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
