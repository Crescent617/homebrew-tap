cask "yomi-app" do
  version "0.10.28"
  sha256 "7ebec2957cef03d54e70ef511c426c4d27bc1ab2e412db550be771ea925cf14e"

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
