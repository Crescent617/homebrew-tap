cask "yomi-app" do
  version "0.2.44"
  sha256 "39f362c71790e9fd51a3f4f73983ca0476c6231fa591078bc97368c7b5055753"

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
