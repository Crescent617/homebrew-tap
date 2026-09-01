cask "yomi-app" do
  version "0.10.9"
  sha256 "ff785eb089244dc91dbcd216356519119df7e771beb44e5de20e29c57386f608"

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
