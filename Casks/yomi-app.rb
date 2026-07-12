cask "yomi-app" do
  version "0.5.4"
  sha256 "0b65a51fefc529c97ccf729ca632ce36d502ae9050edfea1a1bdd085901a8146"

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
