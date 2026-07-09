cask "yomi-app" do
  version "0.4.3"
  sha256 "ac8080606bb2bcd47c84985ec53cb16f5f9795eff6967523935aa089caf0b258"

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
