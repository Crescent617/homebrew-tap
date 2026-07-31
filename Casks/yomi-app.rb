cask "yomi-app" do
  version "0.7.33"
  sha256 "f5e42c9f22cac2c2a94b155bb68119592dba8c151074b29c178cfcccc9994549"

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
