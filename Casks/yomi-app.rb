cask "yomi-app" do
  version "0.10.12"
  sha256 "53b4be8415d9086014cd00fe6403ed7cfbb1b4d7bea954f1a8cc80a8aa944062"

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
