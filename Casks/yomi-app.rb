cask "yomi-app" do
  version "0.9.7"
  sha256 "6f5bb5c1745f47431dacd8516a95f11a06f8b70c18b4c929b271a809f8058ec5"

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
