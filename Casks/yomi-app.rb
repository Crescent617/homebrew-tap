cask "yomi-app" do
  version "0.7.96"
  sha256 "a71091db737d8a60b4d5489c29d0664487ff504ce27ee937641c072a7a6da4cc"

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
