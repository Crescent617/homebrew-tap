cask "yomi-app" do
  version "0.2.53"
  sha256 "c02b43cd34b65a28fa6bc084d658806d42f91973ed2f7e878db018aee5305b9f"

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
