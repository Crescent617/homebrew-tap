cask "yomi-app" do
  version "0.2.49"
  sha256 "201313fcf1358eec99e83ac5943346417404afbe628c6ee4b88b66e5683e7a61"

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
