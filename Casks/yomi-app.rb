cask "yomi-app" do
  version "0.5.12"
  sha256 "700f4f00c2ba0080b1720419d8830e4d8333b9fd167e140d5162cc7f09815377"

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
