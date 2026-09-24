cask "yomi-app" do
  version "0.10.39"
  sha256 "4c17a9c6c0f245587a6e1688f1ed701ba294f24a296f1d5ad2df4945a2b5a5af"

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
