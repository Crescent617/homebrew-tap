cask "yomi-app" do
  version "0.7.22"
  sha256 "44e30a3735cff584923d664b80a995c5cfa2b0325202e255bef5e28cc0b2c815"

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
