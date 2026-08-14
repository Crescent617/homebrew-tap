class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.79"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.79/yomi-0.7.79-aarch64-apple-darwin.tar.gz"
      sha256 "b699c2cc4a99aa00b3cfc3bbdbb39982c26e5e47fd2bfe86e51f37170fb38ba1"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.79/yomi-0.7.79-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7894d430fed13154dae0be5885c36f90dd08adf0a41c1c6c6f2c53f71fb96840"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
