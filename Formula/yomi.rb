class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.3/yomi-0.11.3-aarch64-apple-darwin.tar.gz"
      sha256 "8c0352fca4313f076d404382b439218dd02cddb6940a1c9b78354c63440cc6b7"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
