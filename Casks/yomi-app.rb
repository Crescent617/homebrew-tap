cask "yomi-app" do
  version "0.4.1"
  sha256 "99db0cee8f005d5cc9987992fea72d0c3aeb37a29ffa35612b3912004bd4e11e"

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
