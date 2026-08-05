cask "yomi-app" do
  version "0.7.54"
  sha256 "04cfcedc8d9655e0c7a84c33feb4cda8b24cbd6e786da2f27a27a4c245881935"

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
