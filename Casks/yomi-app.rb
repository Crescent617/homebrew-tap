cask "yomi-app" do
  version "0.7.95"
  sha256 "e1df99a96fd6f1ce3d9035c550eb156c47d1a2933760fdfc178e336821267c31"

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
