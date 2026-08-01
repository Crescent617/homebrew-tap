cask "yomi-app" do
  version "0.7.35"
  sha256 "4a9f8f937e67c19e4935c916c3168c974a65968e4ceeb9a62a9553a582372b55"

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
