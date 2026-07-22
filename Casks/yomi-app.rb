cask "yomi-app" do
  version "0.6.10"
  sha256 "82b85c078cb4f8e0631b00ea66403c2cba5b2efefd498391c6b7c628e76dddfa"

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
