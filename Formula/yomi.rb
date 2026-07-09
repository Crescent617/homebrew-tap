class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.4.1/yomi-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "3bc4ce3ace0e29f6a2c3c54082aa39c1fff9448f4fbcf589955355e5ed2350f8"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.4.1/yomi-0.4.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5a50cadc3f00fef887492cc86a952581ebff72b040aa5277760cf8d076204658"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
