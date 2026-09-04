cask "yomi-app" do
  version "0.10.19"
  sha256 "f22d8771f2456565f832bcb483bcf98ab31e5d2d7dc4e3e06b5b8ec1329a40f1"

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
