cask "yomi-app" do
  version "0.7.97"
  sha256 "c16d375f982e51f4d50bf2cdc451efae1a5d4136991f16dac5920704e4486dac"

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
