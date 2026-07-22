class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.17/yomi-0.6.17-aarch64-apple-darwin.tar.gz"
      sha256 "71c08aacc0067531b10552efb1e2ce3d1d5fff3a1de2175fbbc04399a6342ddf"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.17/yomi-0.6.17-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "630103815ff35e71b55a3524d02e904a215a825db75a3e09e598d534a51256bd"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
