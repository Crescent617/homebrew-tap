class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.4.3/yomi-0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "241368281f077d3523a7c31b6f359868fd4856c702634444d184255e204a9c51"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.4.3/yomi-0.4.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2d6ca216aea3a0385e84f4e07cdbd1c7c173dd8f1b9616f236b04dcff077027e"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
