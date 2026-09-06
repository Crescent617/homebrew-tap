cask "yomi-app" do
  version "0.10.23"
  sha256 "e853182d8c200433d2ccf7e6dd161d73feab2f77cef768824c8e8533522278e9"

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
