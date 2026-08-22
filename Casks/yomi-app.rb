cask "yomi-app" do
  version "0.9.11"
  sha256 "d650692452b8d02c5167926397b222580f2e8a58136b0fcd7f6783ad164e57b3"

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
