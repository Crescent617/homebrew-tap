cask "yomi-app" do
  version "0.3.2"
  sha256 "b9e558b292d6c3980fdd6470d27608e13e7fc3e0231bf5c521b4f432423b0f02"

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
