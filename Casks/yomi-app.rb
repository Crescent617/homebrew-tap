cask "yomi-app" do
  version "0.7.64"
  sha256 "06ad31b8b043cb0d1edee9e449d2ea20c54c4300b59ea0b1e47bfa45fd07ba35"

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
