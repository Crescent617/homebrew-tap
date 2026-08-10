cask "yomi-app" do
  version "0.7.66"
  sha256 "823ce5978c7794f9efa7aaa19a49c4cd7d5f1e503f8e02e926e48e0989a5bc2c"

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
