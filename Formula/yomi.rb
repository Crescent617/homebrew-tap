class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.20/yomi-0.5.20-aarch64-apple-darwin.tar.gz"
      sha256 "62f7134649750d2611c1807e47d5d41cc7ece71b135183bb288fa4a5454dd834"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.20/yomi-0.5.20-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c52ded415a162cef900a9c755ae3eb7603c7b0c8ff7cf542920551c26103c45a"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
