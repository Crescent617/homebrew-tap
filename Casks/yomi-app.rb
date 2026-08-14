cask "yomi-app" do
  version "0.7.79"
  sha256 "ed4541ca59bad3e703962f0e72dbf05ec5d655b512a722561bafb3590221616e"

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
