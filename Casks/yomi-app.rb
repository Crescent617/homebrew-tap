cask "yomi-app" do
  version "0.6.19"
  sha256 "bdcbda19c3c0575a750bf8edf56e410fd8c99bcd2cbfbd7e1860f442eae1b90a"

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
