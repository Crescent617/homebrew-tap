class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.16/yomi-0.9.16-aarch64-apple-darwin.tar.gz"
      sha256 "73f75d96edf3eba8a38c9f4978e34ccaa7bfb14cef8fea1387cb6b316e173827"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.16/yomi-0.9.16-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "26d37de41f98cdafa6c20cc2e6cf577500373954ec4f2acf371e764f709db645"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
