class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.38/yomi-0.10.38-aarch64-apple-darwin.tar.gz"
      sha256 "c38d3eaf1c5c556ca11bcb4cd58b48e881009880fdb684dc86316756f6c86602"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.38/yomi-0.10.38-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "31b1b6c6e5ee8ff896d44687a8c8cf96a637697d38fec1ca11fc374ac81bf880"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
