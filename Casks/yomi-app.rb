cask "yomi-app" do
  version "0.7.6"
  sha256 "3cf7f989e6b7e3f2611c0371f20fe3b4251e86500390cf3577ddef592c6cead4"

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
