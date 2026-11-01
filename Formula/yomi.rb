class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.21/yomi-0.11.21-aarch64-apple-darwin.tar.gz"
      sha256 "be01b1dbb8336212a7b4944982b7cc42800ccda167047c5bfaa773cb3971cf91"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
