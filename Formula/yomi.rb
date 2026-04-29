class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.1.34/yomi-0.1.34-aarch64-apple-darwin.tar.gz"
      sha256 "d8ffb48f05b04f3d76fb83e08c2b2e0a33896702eef4714f98c707f40aa625be"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.1.34/yomi-0.1.34-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9e9a8d722d91b9cec9b89e72af1b464fecf46d6c67c69866e4e436c5c3a21056"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
