cask "yomi-app" do
  version "0.4.5"
  sha256 "6bf1b7063c25bcc39f609ca1e95b0f37beb8a81398453addf05bf455bd55661c"

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
