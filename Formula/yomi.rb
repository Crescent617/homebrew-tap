class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.23/yomi-0.2.23-aarch64-apple-darwin.tar.gz"
      sha256 "bafcda23fae2505ab03e94853e4be1be5bd02e4a44880733a7c4ec418509e942"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.23/yomi-0.2.23-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "407370109f1a117ff709d11911780a5d268c3ad919ad7bfa83bfc89bfcb33dfa"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
