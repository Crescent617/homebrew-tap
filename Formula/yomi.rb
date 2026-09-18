class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.34/yomi-0.10.34-aarch64-apple-darwin.tar.gz"
      sha256 "4f4f83e6635c5f5c8de26a4955d86d212a72533e52c49008634c4fd17100a2e7"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.34/yomi-0.10.34-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c8b80d12e2651558e536759c5887d0560adb0960b1c945e71ba8a41bd2ddd5c7"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
