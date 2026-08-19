cask "yomi-app" do
  version "0.8.0"
  sha256 "cdd7cad254f5f4e952d9d4b2ce059019cecda0628ccb0772b9f1448dd7fec599"

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
