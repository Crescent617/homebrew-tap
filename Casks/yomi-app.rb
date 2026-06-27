cask "yomi-app" do
  version "0.2.47"
  sha256 "86dc981091bef1eab1c5fdd855eec44c65cd4d989426aa48ad65b6f653e35bbc"

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
