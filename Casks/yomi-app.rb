cask "yomi-app" do
  version "0.10.41"
  sha256 "ff18c197069bd4048ba9f50138d4d5937cb4bb4a6e95d3f4ea310d101deb9a2a"

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
