cask "yomi-app" do
  version "0.10.16"
  sha256 "ac6c8505a04f494e44024b45054cf096e8aafc9093aadb95c764a57320bef975"

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
