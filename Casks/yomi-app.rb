cask "yomi-app" do
  version "0.10.41"
  sha256 "ff18c197069bd4048ba9f50138d4d5937cb4bb4a6e95d3f4ea310d101deb9a2a"

  url "https://github.com/Crescent617/yomi/releases/download/v#{version}/Yomi_#{version}_aarch64.dmg"
  name "Yomi"
  desc "AI coding assistant with GUI"
  homepage "https://github.com/Crescent617/yomi"

  # GUI 的 agent 功能依赖 PATH 上的 yomi CLI（doc/session wait/cron
  # 等子命令）——装 cask 时把 formula 一并装上。升级 cask 不连带
  # 升级 formula（brew 语义）。生成脚本已带本行（yomi#891f91f6），
  # 0.10.41 的 tag 先于该改动，本行为手工补录。
  depends_on formula: "yomi"

  app "Yomi.app"

  zap trash: [
    "~/.yomi",
    "~/Library/Logs/yomi",
  ]
end
