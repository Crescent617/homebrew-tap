cask "yomi-app" do
  version "0.7.69"
  sha256 "afd4e5f5c4c85664d6006ff4d3a8320fe01927494d8ed515909e7aa7334bd050"

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
