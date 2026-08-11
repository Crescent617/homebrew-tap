cask "yomi-app" do
  version "0.7.73"
  sha256 "3ac36dbaed7475a0137176c52235cc7b875983acbee8acfdd1e69481f4f353ce"

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
