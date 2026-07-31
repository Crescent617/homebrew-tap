class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.32/yomi-0.7.32-aarch64-apple-darwin.tar.gz"
      sha256 "7451ceced49b36fc0aae65c2455ab3ced4d243320911c743e15a55d1541777a2"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.32/yomi-0.7.32-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "29b2c31a6aa5ce9f83d0d5004ec5cca8a190088eb6241610df3a67f27073d43d"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
