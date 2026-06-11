cask "yomi-app" do
  version "0.2.35"
  sha256 "a79d18c9b9752130b330c22dbb8feab1fd1d4aff777ecc1d0a126cfbe65e4e42"

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
