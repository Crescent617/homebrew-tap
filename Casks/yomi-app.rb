cask "yomi-app" do
  version "0.8.2"
  sha256 "c5fd5e1c517a8a855e88efbf6fd1d859d8fe9d36c3228da0f753cbb083fc3268"

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
