cask "yomi-app" do
  version "0.6.2"
  sha256 "b07478b0069861cadb7278a8321bf8889004cd4ab9cc38d0cc2586c407de2ba3"

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
