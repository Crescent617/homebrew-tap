cask "yomi-app" do
  version "0.5.3"
  sha256 "eebfbc81dda557150570cf1ff124be10875ac7a5469b5a3acf9c1d33fc97bb26"

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
