cask "yomi-app" do
  version "0.7.90"
  sha256 "64341503250dbf67f95385a8631887734d8253b3d97b2eb3a7880dbc64d29990"

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
