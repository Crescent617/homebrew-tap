cask "yomi-app" do
  version "0.7.30"
  sha256 "011d569211c1114d48f939346b35a87c959c4aa6f6a96a7e8161df1f56624831"

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
