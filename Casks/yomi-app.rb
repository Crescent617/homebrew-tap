cask "yomi-app" do
  version "0.5.19"
  sha256 "43db8d52ca46cd7a8722efca92a1ebd360c198b0336e53a19102da8e80c4402a"

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
