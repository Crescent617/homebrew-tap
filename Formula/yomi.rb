class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.17/yomi-0.5.17-aarch64-apple-darwin.tar.gz"
      sha256 "229c7dbed50319245f6bdcf3cbf5eb785aaec9b21b1050207571098c21d4c189"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.17/yomi-0.5.17-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3e25e937056bf0ef8b858a3bde482d0522232026d6835522645ce8bafac0c18e"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
