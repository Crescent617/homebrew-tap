class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.15/yomi-0.9.15-aarch64-apple-darwin.tar.gz"
      sha256 "75753dace98afa55bc65a182c708e378fe93c0fd21519a6cf3f4c7a97d3cc0aa"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.15/yomi-0.9.15-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a1156f306526fcd317b4c62a305cfd0f5f612036c3ba423bd7c2ed60d851de01"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
