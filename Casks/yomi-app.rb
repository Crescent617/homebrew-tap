cask "yomi-app" do
  version "0.7.42"
  sha256 "181dd1a04cc4ecfc8e615697bb88a58116eebe2b095e05cb9c28571d3c0a302b"

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
