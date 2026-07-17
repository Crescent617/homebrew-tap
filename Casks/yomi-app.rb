cask "yomi-app" do
  version "0.5.27"
  sha256 "9d34fc994acfe09979d646ab04578bace8319795405f52db3a7993fddf65fd89"

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
