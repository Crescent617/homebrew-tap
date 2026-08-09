cask "yomi-app" do
  version "0.7.62"
  sha256 "e5fb8ab7981ac96908aacd59738829ed3a7f206a7cc3d1227d3e22bca6e6b82c"

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
