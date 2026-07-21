cask "yomi-app" do
  version "0.6.8"
  sha256 "0f512438acbbfd51fb872780e6bbc24ab8e61698baea356d272b82c474c6f2f6"

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
