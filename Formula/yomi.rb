class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.86"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.86/yomi-0.7.86-aarch64-apple-darwin.tar.gz"
      sha256 "9efd5579806da195de559e6482f54246e7b5f7ea0e75705b8674ef493d69bc05"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.86/yomi-0.7.86-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d44c1437408984a40e32e3bf6cb46a29bf5b3dea8cb95276b264adc4ecf56f46"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
