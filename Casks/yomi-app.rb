cask "yomi-app" do
  version "0.7.93"
  sha256 "0c633ed6d77a2ccb49c5803d5eee01e4f6b3fadecba40933a592e54426447a1a"

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
