cask "yomi-app" do
  version "0.10.0"
  sha256 "151a205a0b174757902eb8f50ca7221f6741ee340ac23d424c10c08b12e3c11c"

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
