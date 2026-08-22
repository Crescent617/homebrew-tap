cask "yomi-app" do
  version "0.9.8"
  sha256 "f83298bc468722f18ec3be2ee583c938c153714b17de153aacdef6a92f1225d5"

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
