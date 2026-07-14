cask "yomi-app" do
  version "0.5.20"
  sha256 "8762bde08b18a13578a8f68b9bf42b326f4e6e434a5a8cb7cae1a7a16663894f"

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
