class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.25/yomi-0.11.25-aarch64-apple-darwin.tar.gz"
      sha256 "5590e9523c99877a38db9f28bdf8f80041c61bbfca41ba5f0033609cbca37619"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
