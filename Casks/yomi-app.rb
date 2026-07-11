cask "yomi-app" do
  version "0.5.0"
  sha256 "f780c7e50b560db43999e0f2f8cd60fcf3b1e72be18636fef55d88e7c285ed8a"

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
