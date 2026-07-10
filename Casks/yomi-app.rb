cask "yomi-app" do
  version "0.4.6"
  sha256 "2e29155f6375d2a28ed809c0647fd9c7120d1a390e8126d44c2859b1861b1aae"

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
