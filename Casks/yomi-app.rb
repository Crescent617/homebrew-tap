cask "yomi-app" do
  version "0.6.5"
  sha256 "802f5bec5a56fc9a2fe2540167ae08b984c3a0919419f657dca56dbcd06cbb4c"

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
