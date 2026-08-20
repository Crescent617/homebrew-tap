class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.1/yomi-0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "a3b027d9f978f53136b48c399752dff6955113d3aded59e0701aba489b7417a4"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.1/yomi-0.9.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "965b54a3a390d871c7523a9f34b89c61c1bb7eee71b08c86c69e7c6af53f8b2a"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
