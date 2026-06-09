cask "yomi-app" do
  version "0.2.32"
  sha256 "c8633776e7d8a4e685ad3c5dc83d375ae5202983f666e3bf1819f7c473f48907"

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
