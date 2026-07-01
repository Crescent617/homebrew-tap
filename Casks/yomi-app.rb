cask "yomi-app" do
  version "0.2.54"
  sha256 "ad540c2177bd8b307622e184abfa82b2f062d1206c6cdff9996884c6892f1663"

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
