cask "yomi-app" do
  version "0.10.24"
  sha256 "51ef2a54297507349fbc1425872ad0f659342c4eadb42aed40aa1a14b196c744"

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
