cask "yomi-app" do
  version "0.7.23"
  sha256 "19e42b161f8d5cd6a2a2724b43d4275cdac88e0566086a9966d616c4980a3581"

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
