class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.8/yomi-0.6.8-aarch64-apple-darwin.tar.gz"
      sha256 "69a229c16f1c6b2cafde6578011f82abe889cb7db385bad3fcfd3bbb21da8685"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.8/yomi-0.6.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ed75ca6b5a01b4b411ac1e6305179c6b908d538429fbd2080bd8e45d3a744f25"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
