cask "yomi-app" do
  version "0.7.14"
  sha256 "39f62a93ed9a93cfff0b15eb2e604bd427ffc8635e7ca401fd560d124bcbe7d8"

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
