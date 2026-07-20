cask "yomi-app" do
  version "0.6.4"
  sha256 "a97950b1893aa86975e3afa7fb3efd341e2191bc655a5ba3ab132c780f9472ef"

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
