class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.2/yomi-0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "04543542911976f9769f6d23c66f347e192cac6abe2d2331646f90fb5db189d0"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.2/yomi-0.9.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8f9b4867d559bace87b2bf072cc5bcb04391bec4b53c8f1e0fad2f7e3eb05f26"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
