class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.10/yomi-0.6.10-aarch64-apple-darwin.tar.gz"
      sha256 "d3910e9583e20bbe8b8413d4440435049cd298664072b2222bfa17dbbc273764"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.10/yomi-0.6.10-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "60cbac59c7071309d475003c8806ed5fd9cc273011127ccf487f5d8220456cfa"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
