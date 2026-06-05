cask "yomi-app" do
  version "0.2.26"
  sha256 "2f7eea66b492a7b4abe3719de265a29dccd8ed7972236a35b485dbe7098a0e71"

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
