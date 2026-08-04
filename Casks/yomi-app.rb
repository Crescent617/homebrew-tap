cask "yomi-app" do
  version "0.7.43"
  sha256 "d85ac6a349a43a0a51f54b312742b13037fb11457c532aee54af97fc7b30fde8"

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
