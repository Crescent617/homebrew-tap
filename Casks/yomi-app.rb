cask "yomi-app" do
  version "0.7.29"
  sha256 "97095ecc979e7fa61c6d1ba3284161067a58149892f7712341550c7f4038d8e7"

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
