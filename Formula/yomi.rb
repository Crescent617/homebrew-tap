class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.99"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.99/yomi-0.7.99-aarch64-apple-darwin.tar.gz"
      sha256 "a47c49a7ac4518d2712268d5d92ad17479413f02da825eac99e84ab47dfae582"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.99/yomi-0.7.99-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e02e4f6a40cd1125b30f02e462d4520590f28a493c68f522b5ec8b9948940dd1"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
