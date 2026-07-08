cask "yomi-app" do
  version "0.3.4"
  sha256 "6b4bcf3c026551e4b373b1d14259b8f29368648a069e24cf42709ef1b732c7bd"

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
