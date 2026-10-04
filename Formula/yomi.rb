class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.4/yomi-0.11.4-aarch64-apple-darwin.tar.gz"
      sha256 "7c654af4a0297956ae354742ca2b6f87f7a3c2f4593c7738a6cecaff38aa1a28"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
