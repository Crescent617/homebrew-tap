cask "yomi-app" do
  version "0.7.86"
  sha256 "96d716c2b38efd6ffe5508abd3dc0a032482ce8b0c75592e6f1c79a2f85bd74f"

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
