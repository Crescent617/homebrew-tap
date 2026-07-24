class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.21/yomi-0.6.21-aarch64-apple-darwin.tar.gz"
      sha256 "576f50ba2cef04b1b3a7c45cddfb244e3b745f606f88abde95c764b3f8a722ba"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.21/yomi-0.6.21-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b9783bb20d5d5cd6be4bb06052190c1b55de2ffef25515908dc63ee44615607c"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
