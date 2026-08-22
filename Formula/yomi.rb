class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.11/yomi-0.9.11-aarch64-apple-darwin.tar.gz"
      sha256 "256c6b09e68076f1ae0dd9f062f060ebea2ebb872253ddf4073b9c651babc397"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.11/yomi-0.9.11-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c1a82db8bec9a77fb7475b906e1d8b63d9c2ee2171f5500e1bd4fedb6a19a7e1"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
