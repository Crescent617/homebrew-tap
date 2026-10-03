class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.2/yomi-0.11.2-aarch64-apple-darwin.tar.gz"
      sha256 "52fb5538156c344879fc1bfee60321b3942cab0b370a5880a9a7eb0b1ab68b81"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
