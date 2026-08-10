class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.67"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.67/yomi-0.7.67-aarch64-apple-darwin.tar.gz"
      sha256 "a68446dc8f9445e3e37610374c5ab53e44da5c6ebdfb6df65c67b60bd2a835e2"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.67/yomi-0.7.67-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "acda1bd4094930848d516f626b80f95d46d34d465f758f2ea6ddfa8a150d5c07"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
