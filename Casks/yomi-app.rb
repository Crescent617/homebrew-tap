cask "yomi-app" do
  version "0.4.2"
  sha256 "276d9b0d250362e32da0ef02a66054c466f920d6dbb6cb4473e0df06d6e2d19a"

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
