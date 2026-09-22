cask "yomi-app" do
  version "0.10.38"
  sha256 "2d5efa60cf5808191ef0bbd9bc2a40716d0c6557f2454d3c775159d5f49505e4"

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
