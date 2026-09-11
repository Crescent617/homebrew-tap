cask "yomi-app" do
  version "0.10.30"
  sha256 "d40cd34c4c5d7ab5ddd8b9ae926bc44ea32da323a5e92e47c7a3400fc5eb80be"

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
