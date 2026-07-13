cask "yomi-app" do
  version "0.5.10"
  sha256 "8fef752af52859d46ec0710f65789b06ffbd1712cd3da73cec11671a29275d43"

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
