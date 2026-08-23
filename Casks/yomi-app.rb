cask "yomi-app" do
  version "0.9.14"
  sha256 "923d477e1a73aadd1b6ecf0253bb334334cd7116127e505c8fda78c6488a07e2"

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
