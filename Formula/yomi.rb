class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.43/yomi-0.7.43-aarch64-apple-darwin.tar.gz"
      sha256 "f53af0966baf9714729b3e1aec9bfd3b86c69c00e38064108281399034d10a43"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.43/yomi-0.7.43-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "59a7486be9a1076870d0e8cd71237883b3a070dd189212a86d97a25a33b0e95c"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
