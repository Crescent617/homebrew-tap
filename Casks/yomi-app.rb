cask "yomi-app" do
  version "0.10.54"
  sha256 "6ed685fbbec3287754848b237bcc3cbfa4569c1fe436b961d44650c48e6a5402"

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

  # 自签证书未过 Apple 公证，quarantine 会让 Gatekeeper 在每个新版
  # 首次打开时拦截（登录项静默拉起也会哑火）。本 cask 的信任链是
  # tap 本身 + 上面的 sha256 校验，与 formula 二进制从未带 quarantine
  # 的待遇对齐，故安装后移除该标记。上 Developer ID 公证后应删除
  # 此段（彼时 quarantine 是特性而非摩擦）。
  postflight do
    # must_succeed: false——装时若本就没有 quarantine（用户传了
    # --no-quarantine 等）xattr -d 会非零退出，不该因此装挂。
    system_command "/usr/bin/xattr",
                   args:         ["-dr", "com.apple.quarantine", "#{appdir}/Yomi.app"],
                   must_succeed: false,
                   print_stderr: false
  end

  zap trash: [
    "~/.yomi",
    "~/Library/Logs/yomi",
  ]
end
