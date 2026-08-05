cask "yomi-app" do
  version "0.7.50"
  sha256 "5124ef8960b950d63067041cc8ee8097c66a5a7a70fac3fb21bdfe72062dad99"

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
