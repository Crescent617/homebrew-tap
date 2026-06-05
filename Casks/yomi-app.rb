cask "yomi-app" do
  version "0.2.27"
  sha256 "333b26e03db56787c1c6f823cd1c5418a1fd8d7dbea8f6fc25d695d5cf56b823"

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
