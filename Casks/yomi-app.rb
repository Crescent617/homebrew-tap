cask "yomi-app" do
  version "0.10.8"
  sha256 "933be8a3404916177f01b1aad1f19dd108fc34c6758d2ba9f0387550fd2fface"

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
