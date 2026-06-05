cask "yomi-app" do
  version "0.2.25"
  sha256 "b7770c23cf7492e1348b88120601a19c22000765fbb74bf8831219619a6d0124"

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
