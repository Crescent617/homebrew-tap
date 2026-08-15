class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.83"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.83/yomi-0.7.83-aarch64-apple-darwin.tar.gz"
      sha256 "119e54f13c845269d659d95a2f932a938e199a83dc221c064d72c12a8962b9f8"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.83/yomi-0.7.83-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ad5b1f37e0da22abc965b18aac5d53532490d0b895f178526a9f62bf327018cd"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
