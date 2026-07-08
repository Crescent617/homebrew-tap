class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.3.3/yomi-0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "a53d5782b9434f63c567612492d4bc6769cd452d17e63c2bca4397162d83e8c8"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.3.3/yomi-0.3.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "634bd37bfe96f4d891962897ac7b9b07cc5dc49533c9298dcc644b1d1a5e6e29"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
