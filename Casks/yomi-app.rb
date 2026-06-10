cask "yomi-app" do
  version "0.2.34"
  sha256 "6dcd5909336f56e8b267231e1fd71a4de3ff1c9abe942138c35102959c97ccb7"

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
