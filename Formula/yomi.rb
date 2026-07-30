class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.26/yomi-0.7.26-aarch64-apple-darwin.tar.gz"
      sha256 "165368b87806d9486bd0fc93244ed40620c6339c6cbb50eaeb34d31dae5cae6b"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.26/yomi-0.7.26-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7d8df68e4aeb59aa563699550dc219a0b6ad4f3cb545c9b89f0fc82d9c3dd5e1"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
