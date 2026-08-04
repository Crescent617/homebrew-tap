cask "yomi-app" do
  version "0.7.47"
  sha256 "95fdd2f9d1cea13d724d0c414940d6bafb7cea7de8314e16218e76a13718511e"

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
