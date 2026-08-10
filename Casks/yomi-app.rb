cask "yomi-app" do
  version "0.7.68"
  sha256 "8a9e333413ae64f772108e89703bd381b991cb85cbbd288d570ae62b4913db15"

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
