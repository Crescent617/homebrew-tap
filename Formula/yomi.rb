class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.13/yomi-0.2.13-aarch64-apple-darwin.tar.gz"
      sha256 "c3b2867c09d3f9893b563c1504a553e1f28245c947b92e255609442eac92e79e"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.13/yomi-0.2.13-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cb5588d34da8e58a35203116840150d2b38a2a9b5f7657e37256bb19e6738322"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
