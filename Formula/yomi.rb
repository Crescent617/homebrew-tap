class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.96"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.96/yomi-0.7.96-aarch64-apple-darwin.tar.gz"
      sha256 "c5324bb258a53c8bdcfd74a35484c8fe1c221a3df94eedf2e6a637689df04a0a"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.96/yomi-0.7.96-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d27d77eeb3c55a3fd10a49e874dac307591010a4c719d524eb1e5d0bb3645fd3"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
