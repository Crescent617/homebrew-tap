cask "yomi-app" do
  version "0.7.19"
  sha256 "112e13473d47818371e2e160dd3019c040e880e00c7213c7e97c8297f957fab6"

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
