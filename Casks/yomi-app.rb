cask "yomi-app" do
  version "0.10.31"
  sha256 "4dea011f80f638089908f376e4ffa18bda5953e2871e62e575d51d4981208f3e"

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
