cask "yomi-app" do
  version "0.9.10"
  sha256 "0b0b96d4a033610f63c3f82fe50e250f78b97f9015c059453d2a801c2750b650"

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
