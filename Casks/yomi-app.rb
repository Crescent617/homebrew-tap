cask "yomi-app" do
  version "0.2.24"
  sha256 "ca24885c4250d179e1b3ca1f4c7311ed208f80da37671a94730ce3c1c1ab16ec"

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
