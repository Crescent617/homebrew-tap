class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.13/yomi-0.6.13-aarch64-apple-darwin.tar.gz"
      sha256 "e4c75da0b5b97bc6d317fbcacebc25f553b2a8d03353e1c089804763213ad06b"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.13/yomi-0.6.13-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7903c28af92a9bdcb4fda0c2140a1614864440eab657da35903dc1f023137c6d"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
