cask "yomi-app" do
  version "0.2.50"
  sha256 "86cf708a4ec487ba27c6144fa47efead26dd172d55acc4ed0847c0f858b7ed5d"

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
