cask "yomi-app" do
  version "0.5.16"
  sha256 "bb30d2e95789ca94acef9d5dad32b01e69fd4d8e5ffa63aadaff3fb5056d84db"

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
