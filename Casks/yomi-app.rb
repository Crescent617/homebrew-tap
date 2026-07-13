cask "yomi-app" do
  version "0.5.14"
  sha256 "717033caa0318606a339ef72f992f10e7e3c9253486628c8a0a5de0766a03391"

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
