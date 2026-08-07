cask "yomi-app" do
  version "0.7.60"
  sha256 "937bd8e5601c70deb6ea55f30ba8b2f348bbfc0c594db3647c0ee4a8109b883a"

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
