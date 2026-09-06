cask "yomi-app" do
  version "0.10.26"
  sha256 "285c8f16c7a0a95da1058116c1c3581f016604aa4f78cb33f5f6817b6208dd85"

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
