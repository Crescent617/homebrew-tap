cask "yomi-app" do
  version "0.10.40"
  sha256 "8613335b8063dcf34bf5d228fd0eddb4fb403e24007d3b0c217eab493bcc3de9"

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
