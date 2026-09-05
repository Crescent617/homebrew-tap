cask "yomi-app" do
  version "0.10.22"
  sha256 "b859ef55ca307e0aeaedb0a58e34dce25353ce38cc505ebb0e4c66eb0f06b57f"

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
