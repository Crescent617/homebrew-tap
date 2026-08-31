cask "yomi-app" do
  version "0.10.7"
  sha256 "aceda734422e07f28bb7aab45a01f7279bc2aa078feedbab7256592bfd4f0be9"

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
