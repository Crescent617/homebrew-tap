cask "yomi-app" do
  version "0.7.10"
  sha256 "9d1314d7965ac37a281581074a90dc2e026f998833dff98e112368a5a8fe4726"

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
