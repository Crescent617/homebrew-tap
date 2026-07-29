cask "yomi-app" do
  version "0.7.25"
  sha256 "3c06330cb31f273b162723abc2d64ac9b91513a04d2e4fc7eb927ca2959bd458"

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
