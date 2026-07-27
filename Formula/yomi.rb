class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.10/yomi-0.7.10-aarch64-apple-darwin.tar.gz"
      sha256 "0d7d6aa9ecb80cb4f29bff9ceaf08d02cc92bdb71399ff680c5b67323586a7df"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.10/yomi-0.7.10-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "066843f16babe3fb25f0c1de542e519fa9ccb5d5c0a56e81704daff2b00f7728"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
