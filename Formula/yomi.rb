class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.6/yomi-0.9.6-aarch64-apple-darwin.tar.gz"
      sha256 "c4d7834d363c36cccd030ea59e5f7098effe8b22c0f3cbd6ef8915b08bf297f7"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.6/yomi-0.9.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b04e49fb9de99831d539d0c10170b690cd0c9a068adfcbb09a110c2110295523"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
