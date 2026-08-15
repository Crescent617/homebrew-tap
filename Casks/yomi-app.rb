cask "yomi-app" do
  version "0.7.81"
  sha256 "4dcc5d986d3038eca4424b23b8c524ff04c7b53a1603d491e55e5b1bde5cdbd1"

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
