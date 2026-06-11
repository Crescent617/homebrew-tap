cask "yomi-app" do
  version "0.2.36"
  sha256 "1e6cb9f321232bafc3f59105234da579114b39fb51740bf8cb0f071593bb8244"

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
