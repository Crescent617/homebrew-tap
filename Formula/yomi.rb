class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.13/yomi-0.5.13-aarch64-apple-darwin.tar.gz"
      sha256 "ce7d8f790bc1d63dbd6d646b072b0636d8aab15dee76d0f02ad48afdce0c0e65"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.13/yomi-0.5.13-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "39a68a42b4a62634f624a5bde7440cf2551d94889b17ee7de521e36718996e3e"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
