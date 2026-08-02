cask "yomi-app" do
  version "0.7.39"
  sha256 "a28d1f7a930a06249c2e288a479d716d518ff94a229077372ffa65294cad9520"

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
