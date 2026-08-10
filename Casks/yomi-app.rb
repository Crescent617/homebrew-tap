cask "yomi-app" do
  version "0.7.65"
  sha256 "0c06ecb96bde073b73d3e456e4292fc0ac00f331b52040c8f3eee83f8af121d6"

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
