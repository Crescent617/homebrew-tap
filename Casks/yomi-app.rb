cask "yomi-app" do
  version "0.5.17"
  sha256 "41bad6684e134e560934d338b418cf09bbacd97df18d1a34056c6763ce6b1db3"

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
