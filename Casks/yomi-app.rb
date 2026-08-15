cask "yomi-app" do
  version "0.7.84"
  sha256 "b9214449fe6a5e00d12ac72443a7bdc7423a5de21aa39968a87f18b3fd4e50ac"

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
