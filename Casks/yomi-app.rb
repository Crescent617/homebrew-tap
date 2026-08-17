cask "yomi-app" do
  version "0.7.91"
  sha256 "67b4675e19d45d38d0eaac933e1f0f73946ef047eff7cae925f30fc8030c3735"

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
