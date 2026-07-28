cask "yomi-app" do
  version "0.7.18"
  sha256 "61da2582bccb65a29632a044bd712a28fb7563dc5fd4734cfce211c3a8490011"

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
