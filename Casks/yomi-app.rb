cask "yomi-app" do
  version "0.7.63"
  sha256 "62fa0aa6d02e8fa210c8a65527fadd3fd43615217bc43a41674e14622fc0a2da"

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
