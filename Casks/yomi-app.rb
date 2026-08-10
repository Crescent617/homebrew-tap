cask "yomi-app" do
  version "0.7.67"
  sha256 "6494f054f24eefebec25d97585e00d4fe79cf9f2a1ce7124f985b68c37226c5a"

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
