cask "yomi-app" do
  version "0.7.31"
  sha256 "0ba7a76aed1569cd04cebadd9dc3e770256d24e7aa3e1d499a3c22a3fb5c82e3"

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
