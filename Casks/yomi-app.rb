cask "yomi-app" do
  version "0.5.28"
  sha256 "a2271007a22fc021858fbdb074cb8741251b3c1370aa2db018eceb928e5bc62f"

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
