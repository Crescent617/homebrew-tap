cask "yomi-app" do
  version "0.7.12"
  sha256 "8de743ad0240b8a70ff9533b96056ce5cf5b361edbaa14c51703c32fcbb0a1d8"

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
