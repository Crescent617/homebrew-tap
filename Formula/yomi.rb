class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.42/yomi-0.10.42-aarch64-apple-darwin.tar.gz"
      sha256 "c8b358d8abaa44d759314c78729b239a85442bb9f2d316dd7ac71c82865d14cc"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.42/yomi-0.10.42-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8ca380dde998f49978c0a128beb0a2e1ccfcbfa6bc86f92d37c3e4558034ad34"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
