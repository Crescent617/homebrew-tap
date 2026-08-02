cask "yomi-app" do
  version "0.7.40"
  sha256 "258cf24b2d383bf465fcdacbb2b76615eb08ba700f44855eba21475f3e0a0cb8"

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
