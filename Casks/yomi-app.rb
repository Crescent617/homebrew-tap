cask "yomi-app" do
  version "0.7.9"
  sha256 "ee99eb21ee6afb01d40b991bdd728cd6d0f3e788657da00ac4ccb7c7bf7708cc"

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
