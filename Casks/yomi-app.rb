cask "yomi-app" do
  version "0.6.1"
  sha256 "2a809fa41bd48047d8dc822933ecb0b436c5e89596cfe5331883c4e26924b732"

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
