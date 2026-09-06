class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.23/yomi-0.10.23-aarch64-apple-darwin.tar.gz"
      sha256 "057e96c5b81d91a1a00744f0da0da4585976347dbb45863581819830842237e8"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.23/yomi-0.10.23-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3ad9d3ba3b0b51e4e892fdf6fc36de44ebb21bc9df641f099c6d05d587ee133e"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
