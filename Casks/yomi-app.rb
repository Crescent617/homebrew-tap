cask "yomi-app" do
  version "0.9.9"
  sha256 "336cd72265e3f941dcf770513bf9df00d3555934a7770f0ccc48bccb9e232e8d"

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
