cask "yomi-app" do
  version "0.5.18"
  sha256 "023c3fd471ee551f057823bb10d92bdaac7820d3beba9f9cf349e6979135a77c"

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
