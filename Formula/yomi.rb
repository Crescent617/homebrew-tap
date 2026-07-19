class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.0/yomi-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "331c35bcea2824babc0fbe00114608545df749e0663ff55433e1d86121d3d82a"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.0/yomi-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "601adbfd9d2cf94e654bac047272830dc6e90a0e3f6d0e5d9bb500b08bdb288f"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
