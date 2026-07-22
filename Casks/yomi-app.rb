cask "yomi-app" do
  version "0.6.11"
  sha256 "b169ce10c59b00b01443fd4b2ff26e1aadaf939b0312692e0e99b864e2778d00"

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
