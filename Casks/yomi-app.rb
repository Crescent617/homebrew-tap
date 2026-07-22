cask "yomi-app" do
  version "0.6.9"
  sha256 "aa038e296b29d2a58c6800ebf7c4e885ba8c35e581c42687c9a624e589f32a72"

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
