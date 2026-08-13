cask "yomi-app" do
  version "0.7.75"
  sha256 "e74bd17fb24a4b14be5166ba37dc35b21f2acae638c51b1775145934990cb061"

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
