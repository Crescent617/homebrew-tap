cask "yomi-app" do
  version "0.7.1"
  sha256 "284fc02c1bacbf67d1fb80ae45374ee5b844bcd5b162bc88bf64bf13922c7748"

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
