cask "yomi-app" do
  version "0.10.1"
  sha256 "f5e05ba15398145a10d44979bea9dce07cc6173c242a70469a4750e663b2b128"

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
