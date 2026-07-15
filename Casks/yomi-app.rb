cask "yomi-app" do
  version "0.5.25"
  sha256 "8f638354e493b30572375e9913b3bf6f3e96bf21a7403ce2afe75ab89aa3d283"

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
