cask "yomi-app" do
  version "0.11.7"
  sha256 "08c3786ffcc3c5c48a5a2504de202590e58b3ae5549287d88aebb11124815e43"

  url "https://github.com/Crescent617/yomi/releases/download/v#{version}/Yomi_#{version}_aarch64.dmg"
  name "Yomi"
  desc "AI coding assistant with GUI"
  homepage "https://github.com/Crescent617/yomi"

  # GUI 的 agent 功能依赖 PATH 上的 yomi CLI（doc/session wait/cron
  # 等子命令）——装 cask 时把 formula 一并装上，PATH 由 brew 链接
  # 自动就绪。注意：依赖只在 install 时保证存在；升级 cask 不会连
  # 带升级 formula（brew 语义），formula 随 brew upgrade 全量或单
  # 独升级。
  depends_on formula: "yomi"

  app "Yomi.app"

  zap trash: [
    "~/.yomi",
    "~/Library/Logs/yomi",
  ]
end
