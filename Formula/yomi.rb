class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.4.4/yomi-0.4.4-aarch64-apple-darwin.tar.gz"
      sha256 "64f0ff20e00500a50de407a6f0434c59f36a595f61d92421eb18f356a3876a71"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.4.4/yomi-0.4.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1d03c56b2ef01ee972fe982dec7bf4c4c2820b733532e86b851ce3937a9956bd"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
