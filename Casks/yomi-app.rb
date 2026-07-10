cask "yomi-app" do
  version "0.4.7"
  sha256 "d35dced43a0cecb436e957abb11baec76aa084f7147ae8d48c33a1150fbe4cd8"

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
