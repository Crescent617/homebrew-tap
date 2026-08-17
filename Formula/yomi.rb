class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.88"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.88/yomi-0.7.88-aarch64-apple-darwin.tar.gz"
      sha256 "dbc224ce6a8ac3d5ce2ef3aa7fe366df360d0c1574ec14f7a7fcf524d3689f68"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.88/yomi-0.7.88-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "645cd0913b3e0ace62cc68d4a785c48031105b150e8f135054ffa56fa375caa3"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
