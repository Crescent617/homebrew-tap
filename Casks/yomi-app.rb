cask "yomi-app" do
  version "0.7.76"
  sha256 "2030b5b0da7a5ad7273d18f53b44c0f8dd166b06c7b968b53c70661a6f46f3ad"

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
