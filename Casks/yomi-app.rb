cask "yomi-app" do
  version "0.1.0"
  sha256 "eb81bfe37ae5e54b31ecc7302db6c133b696f2813a414ab9935323c6f0e4960a"

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
