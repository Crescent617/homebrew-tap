cask "yomi-app" do
  version "0.7.71"
  sha256 "0c07f65dc9cf6ef09c96fd11e4e8131ca5f471f90d95d1924d9b3f2be15ee007"

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
