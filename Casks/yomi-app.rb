cask "yomi-app" do
  version "0.9.17"
  sha256 "5cafe15a19a95053d63b4e49d77b077acf9c8c00711f068177b9baea11ec39c9"

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
