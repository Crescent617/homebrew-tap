cask "yomi-app" do
  version "0.7.83"
  sha256 "e040df10c65b2fc5ec3725afca898f0d200183ffeb4d1d782ffc0070676dd064"

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
