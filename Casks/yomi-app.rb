cask "yomi-app" do
  version "0.6.20"
  sha256 "6fb4933b80a96dfb3a34c7d09b1abe04d44e405403b152141b42adec331884c0"

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
