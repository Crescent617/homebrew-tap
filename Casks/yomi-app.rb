cask "yomi-app" do
  version "0.9.21"
  sha256 "1a315ace70bc8691149e2169f649511b697508b2b5b7af36a40b4362169dc4c7"

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
