cask "yomi-app" do
  version "0.7.88"
  sha256 "4d7f0b0cc42b84186b5e9121098954d6203c966792a94882834e8ff0896fc4cb"

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
