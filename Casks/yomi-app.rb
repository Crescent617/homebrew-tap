cask "yomi-app" do
  version "0.7.58"
  sha256 "f227f07cb5c6877905e5e156db2cdded96b9efaae7fd449df31481d83029f607"

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
