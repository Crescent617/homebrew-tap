cask "yomi-app" do
  version "0.7.26"
  sha256 "a232e65a0d22bbe5e4079714813553f255b379a4bb0045a75acf1ec92324a453"

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
