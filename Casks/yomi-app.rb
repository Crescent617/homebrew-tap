cask "yomi-app" do
  version "0.6.13"
  sha256 "aa795e88d0eb5c0fa5e7a2b76ac2abae7e51255a6e1530518d8bd4c6e419dd2b"

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
