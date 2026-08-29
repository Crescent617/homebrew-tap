cask "yomi-app" do
  version "0.10.4"
  sha256 "19c312bd3f31935bc5dec3752c591425400eaf0b5213bc5b94269bbb105435c7"

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
