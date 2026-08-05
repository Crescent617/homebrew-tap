cask "yomi-app" do
  version "0.7.49"
  sha256 "1f62f8ea8c3f465debd224100e8399693662f7f3db63b399d0ea7eeb539daf77"

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
