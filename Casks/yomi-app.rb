cask "yomi-app" do
  version "0.2.39"
  sha256 "7f49b0527fd4a5634490bd27986db4437be23ed3db1b4feb4277daf7a4d0b4ab"

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
