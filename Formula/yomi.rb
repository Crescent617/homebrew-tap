class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.29/yomi-0.7.29-aarch64-apple-darwin.tar.gz"
      sha256 "0a267987de0a53ef55c89f7a30b6b3b8b5509b99682e601501ea89e1a64a72d5"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.29/yomi-0.7.29-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "41696f94362cb8e3196f2b50ba3052d3ccc8c01a75b3f2d1dfea58304666c543"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
