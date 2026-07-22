cask "yomi-app" do
  version "0.6.15"
  sha256 "de572a38e05a545668edfd6054b79d4399e2cefb843361fea779898ee514b0fe"

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
