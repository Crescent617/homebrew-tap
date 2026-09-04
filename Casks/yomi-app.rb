cask "yomi-app" do
  version "0.10.18"
  sha256 "ef8f2e0b4a170194b62b83a9aedfa6d13b5264c88fc74942e0356632518867a6"

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
