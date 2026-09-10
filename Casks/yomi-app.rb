cask "yomi-app" do
  version "0.10.29"
  sha256 "078d2bb24400c24356cb9455619d91752d01ac75e3efe5da991fde9dd3d3770f"

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
