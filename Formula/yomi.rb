class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.41/yomi-0.7.41-aarch64-apple-darwin.tar.gz"
      sha256 "049b1221a9d09b2a8ee25c496c0fd12e06f6f15fcca337c89a096d9605ee545d"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.41/yomi-0.7.41-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "92a51ccd3b8ebc1ed0ee997958e9f17e69e9dad6976ead09b33e2446f0add4f1"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
