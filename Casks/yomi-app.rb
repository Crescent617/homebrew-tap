cask "yomi-app" do
  version "0.10.35"
  sha256 "2d79e21b275dd7ce0c51a1cd6deee97281b6400696d0431581337be8cbf07965"

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
