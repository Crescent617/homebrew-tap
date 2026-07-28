cask "yomi-app" do
  version "0.7.17"
  sha256 "9a4caf966d68fb86b0e88103f3b1df1c7ff0d02606c5c1ca1d94eab4d533c791"

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
