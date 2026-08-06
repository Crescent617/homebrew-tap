class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.56"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.56/yomi-0.7.56-aarch64-apple-darwin.tar.gz"
      sha256 "79f686f575a62300c786c2a911377efba87fdbc36f8524b75f1f5e6a380df4be"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.56/yomi-0.7.56-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a3daa2ab5651a8f7a811bfea7e77bc0a1a647e612417ed9a25abd764d3a3e006"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
