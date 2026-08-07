cask "yomi-app" do
  version "0.7.59"
  sha256 "7ec3f9fe829aed0729ed5a01c36f88850b8ba20a1344206b64161f3fc0756ba0"

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
