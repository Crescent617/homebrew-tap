cask "yomi-app" do
  version "0.9.0"
  sha256 "b9a73adf1beb9e9f083896de13b9fa2eb163d772a344f80a5625abdbbc55fadc"

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
