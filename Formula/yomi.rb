class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.32/yomi-0.10.32-aarch64-apple-darwin.tar.gz"
      sha256 "2927d8e74aaaebccc50129befd55478a624fa22165fbe683da0da4937c103858"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.32/yomi-0.10.32-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dbabec7eb4de6fe4214eee5e3ad5cf7ca615e5d327ead5c00c3235fd662ee369"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
