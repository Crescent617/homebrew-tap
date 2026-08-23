cask "yomi-app" do
  version "0.9.15"
  sha256 "c909f936016550a4987e41b1f5bdbf04efbed6f4d9fd0b94284244be28a59216"

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
