cask "yomi-app" do
  version "0.7.37"
  sha256 "d9dc03c7ba80c916cb210422b589dc2496827057f80484aa4d7dbcb0c5bd749f"

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
