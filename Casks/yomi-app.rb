cask "yomi-app" do
  version "0.3.0"
  sha256 "f3f1cc6710a3fb2de8a4c04d94b5b24f192c8bdcd034cb38dbb913383ac37ece"

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
