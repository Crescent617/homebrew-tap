cask "yomi-app" do
  version "0.5.8"
  sha256 "5b346c4f569de979ea19ae5d4b1149166e12c33ac89d2d3325b7994caf9e60b8"

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
