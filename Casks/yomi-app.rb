cask "yomi-app" do
  version "0.5.21"
  sha256 "8d6cc761cbc2c80d2b831088b1d91dfbf8cf02ba0aa93a365f8ae099c0ccfea5"

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
