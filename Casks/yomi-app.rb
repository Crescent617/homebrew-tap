cask "yomi-app" do
  version "0.6.21"
  sha256 "f7a13af6ec9be80e77c9ffa37b73a48a0b36d56569a542319f87fe0d6fcdff39"

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
