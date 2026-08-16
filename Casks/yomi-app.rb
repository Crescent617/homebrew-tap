cask "yomi-app" do
  version "0.7.85"
  sha256 "84b6f3b96dd6d76d091973695e23f262ac96a71fb78d23b6bc2ffc28727bc9f7"

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
