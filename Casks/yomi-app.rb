cask "yomi-app" do
  version "0.7.44"
  sha256 "8b2c62b230e7051076b6bfef541e4f0cf5ad8cf1ed52906f9f82850c6821c0ae"

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
