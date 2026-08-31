cask "yomi-app" do
  version "0.10.6"
  sha256 "4601b1dd87a39af330565716ea3b38d444b273d1bd4cce537121b586db06bb77"

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
