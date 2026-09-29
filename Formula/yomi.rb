class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.52"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.52/yomi-0.10.52-aarch64-apple-darwin.tar.gz"
      sha256 "7f962af4088f3d308cc4849392cc027957209cef9c3dd9634417fe73861251e2"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.52/yomi-0.10.52-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a432c491d6cb699d14bdf1c6807587e4e0052dac8716a9d5adaffe7a6b718bc3"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
