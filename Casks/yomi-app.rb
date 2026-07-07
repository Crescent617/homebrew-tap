cask "yomi-app" do
  version "0.3.1"
  sha256 "cb915d44dd8be164b3e76daf919271f143a6b7327d03909ab35ef7b8790a00fe"

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
