cask "yomi-app" do
  version "0.4.8"
  sha256 "d1b0bfe34dedc3db4f837ad50e15b0af58ee0602e0cb670b4d7bdabf70e18de4"

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
