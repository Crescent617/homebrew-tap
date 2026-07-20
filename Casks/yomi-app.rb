cask "yomi-app" do
  version "0.6.7"
  sha256 "b2e8ac0d4a85c9d49975f4d570cfedcde410c7c2a085ad2a5b0808a93201c2f5"

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
