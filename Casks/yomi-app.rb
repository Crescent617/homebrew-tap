cask "yomi-app" do
  version "0.10.17"
  sha256 "c8a9e0305f8606dd15b77b403938120ef08c4d9481f4406fee3079ee670f46e3"

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
