cask "yomi-app" do
  version "0.2.31"
  sha256 "0761d7b443d3c2588c1a219a13ccbe794f6d9639aaeaa781494764c44b53828c"

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
