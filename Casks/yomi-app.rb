cask "yomi-app" do
  version "0.10.40"
  sha256 "8613335b8063dcf34bf5d228fd0eddb4fb403e24007d3b0c217eab493bcc3de9"

  url "https://github.com/Crescent617/yomi/releases/download/v#{version}/Yomi_#{version}_aarch64.dmg"
  name "Yomi"
  desc "AI coding assistant with GUI"
  homepage "https://github.com/Crescent617/yomi"

  # GUI 会话里的 agent 依赖 PATH 上的 yomi CLI（yomi doc 内置手册、
  # session wait / cron 等自管理命令）——装 GUI 必须带上 CLI。
  depends_on formula: "crescent617/tap/yomi"

  app "Yomi.app"

  zap trash: [
    "~/.yomi",
    "~/Library/Logs/yomi",
  ]
end
