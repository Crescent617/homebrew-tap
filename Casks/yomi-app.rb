cask "yomi-app" do
  version "0.5.23"
  sha256 "688c8f71a98e5afaa146c390cee6edaf39b98319f908248b5d8de1dd6ced9744"

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
