cask "yomi-app" do
  version "0.7.24"
  sha256 "6c45c1d75e20f9589866236da65ad2bd2f8343e2a5230eb30b49da7f45e450df"

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
