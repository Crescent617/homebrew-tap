cask "yomi-app" do
  version "0.5.13"
  sha256 "f6baac968c0d4d217ba1f49e77dbb6270d064fdffe35ca1e9fee21c446b8f5f3"

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
