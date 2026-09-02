cask "yomi-app" do
  version "0.10.13"
  sha256 "b5719f87b424fbc70ace705b4ec23a101411b483fdd5985c784de47e9cb28928"

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
