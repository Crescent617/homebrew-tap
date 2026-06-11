cask "yomi-app" do
  version "0.2.37"
  sha256 "c76c7bf5237ebcef7b0267d4c09cf9f9f25034aa304490f5b9b3ba56cd8554d7"

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
