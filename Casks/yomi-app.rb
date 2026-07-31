cask "yomi-app" do
  version "0.7.32"
  sha256 "ecb80ab68143ce5fe42736247a409a61eaf7588eea980ed2c46cbf10088b62ea"

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
