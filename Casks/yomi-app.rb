cask "yomi-app" do
  version "0.7.92"
  sha256 "be168c3448120dad045e16540a05338319d55271f1aa9c40cd6f37d6efb73221"

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
