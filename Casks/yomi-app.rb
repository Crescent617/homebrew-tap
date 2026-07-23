cask "yomi-app" do
  version "0.6.18"
  sha256 "a0ba45539b6b3dc11d7ce1e9fc266917733c59bac3e03192dfdd92db76ea2780"

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
