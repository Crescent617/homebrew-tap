cask "yomi-app" do
  version "0.10.15"
  sha256 "f9384a207fc0d866daca802f9f5359d49dae102c5637732e8fff424cbdd0f8a4"

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
