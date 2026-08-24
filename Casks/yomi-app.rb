cask "yomi-app" do
  version "0.9.16"
  sha256 "c3b4c57d641fc3366b9121f6f4d077569502c6e06f800d904ca00e9a39f74499"

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
