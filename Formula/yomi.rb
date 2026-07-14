class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.16/yomi-0.5.16-aarch64-apple-darwin.tar.gz"
      sha256 "1fa25c8d39c9cc729fa6d0dc7645198f5216c476a219c3ead02944358ddd5cc5"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.16/yomi-0.5.16-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b9d7c5006f30235934d99ea29512e7e04a4f31ea26b5ce4a954df904f42fded6"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
