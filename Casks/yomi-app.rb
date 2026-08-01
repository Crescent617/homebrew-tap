cask "yomi-app" do
  version "0.7.34"
  sha256 "966de9d88876875af7e0c5bdc111eea644883ebe0fa270660ddf088fc7bc1886"

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
