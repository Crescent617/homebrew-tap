cask "yomi-app" do
  version "0.7.8"
  sha256 "7bc0ae1017039f7a2222d920e083e10f30da1fed061441873c3b6d07976814a0"

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
