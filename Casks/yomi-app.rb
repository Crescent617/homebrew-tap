cask "yomi-app" do
  version "0.6.22"
  sha256 "dee5291b75a12af73f7fbb6a5904dab5806cd73bb0668ee6b88c1eda74ae385d"

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
