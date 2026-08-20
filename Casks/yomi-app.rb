cask "yomi-app" do
  version "0.9.1"
  sha256 "15cd0682120dade10286c0f9e1cda1dc41b1ab3a2c2d32de858c2f80d8991084"

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
