class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.12/yomi-0.11.12-aarch64-apple-darwin.tar.gz"
      sha256 "91c6e0054b930c9eefecb47025feefca60cb555f8ed46c2ef0ca94b11bf9057b"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
