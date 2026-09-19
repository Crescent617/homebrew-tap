class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.35/yomi-0.10.35-aarch64-apple-darwin.tar.gz"
      sha256 "083798bd7d7e3ce9c653f373790e0c87c46391b8e21bad36a00eb336b2759270"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.35/yomi-0.10.35-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "13a757fa1806d5ecbdef4464e7163f2ad716d86b5e9b8e37fe3708773491e63c"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
