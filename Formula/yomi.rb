class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.4/yomi-0.5.4-aarch64-apple-darwin.tar.gz"
      sha256 "ba4a5135b67a1a3f5b9c3307f12124889a692132ed1ed5b8d448baf11ca0cdb5"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.4/yomi-0.5.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "295fb765bd1c263f00f4a8de27dd8cddf3c6691563adc9ce1f8aa05eb9020c6c"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
