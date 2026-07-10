class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.4.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.4.7/yomi-0.4.7-aarch64-apple-darwin.tar.gz"
      sha256 "8cd8750a9a1d06bed12c89fcc5bba95fe362798392bdca541b866ebbfff0f12d"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.4.7/yomi-0.4.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b857ca26a7aea1b17f174825b626e1ffc0f1c1806a7c2c9d065cefdf7f740fb0"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
