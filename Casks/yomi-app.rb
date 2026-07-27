cask "yomi-app" do
  version "0.7.11"
  sha256 "16d98e6cf1920445d528f81198eefbe352217a1113f6462a447b08a5d26e9b32"

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
