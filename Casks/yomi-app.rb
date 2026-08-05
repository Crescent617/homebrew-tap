cask "yomi-app" do
  version "0.7.53"
  sha256 "7e53edf5bea1456e9308bb7edb70c53d833026ba35d899b4988b973ee52533f4"

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
