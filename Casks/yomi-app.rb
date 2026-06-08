cask "yomi-app" do
  version "0.2.30"
  sha256 "f61602a4f6092d91fc698f0c0c9dac1964460383c36df9834d195a6b2fb4967c"

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
