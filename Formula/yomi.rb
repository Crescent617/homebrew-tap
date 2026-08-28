class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.1/yomi-0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "9edd092eb5e8fb22166626ff2842394971af09647e678133e7f05444fd28bbcf"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.1/yomi-0.10.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "df3da8875aff54b8a98a8c4b67cc978ba6f5f63a19beff6bfbc0cd9a693b3ab7"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
