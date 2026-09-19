class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.36/yomi-0.10.36-aarch64-apple-darwin.tar.gz"
      sha256 "cb0d27bc36c958726dac678dedaec4b957a0845fee02eb0d2234637bf75a5a92"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.36/yomi-0.10.36-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "10acc8c069cdfa422ce0d2810e9cf76632049443f5e4b56ddd75a1b069d5a4ff"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
