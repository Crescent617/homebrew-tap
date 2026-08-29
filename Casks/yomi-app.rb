cask "yomi-app" do
  version "0.10.3"
  sha256 "a30beeae1463bf4f8410304386c6ec55245806d9bff9e6f0f8cea43dcb866cd8"

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
