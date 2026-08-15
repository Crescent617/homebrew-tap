class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.84"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.84/yomi-0.7.84-aarch64-apple-darwin.tar.gz"
      sha256 "4a5e02f83b5777a50e1a170843578bc15f2a6dac9185fc0d236f7e5c4d89eaca"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.84/yomi-0.7.84-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ce8c32adbbae26a49912bcd34b217e095d522c5d110f49406a6f2dccf028073d"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
