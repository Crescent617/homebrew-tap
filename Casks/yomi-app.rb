cask "yomi-app" do
  version "0.9.2"
  sha256 "8c233d9c15a59813ab83ad3936788da281e99e8760e9ccaa2995f7f0ab31a0a1"

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
