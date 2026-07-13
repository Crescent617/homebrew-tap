class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.10/yomi-0.5.10-aarch64-apple-darwin.tar.gz"
      sha256 "88597fb2b6c4be817b8a198abc333ba028ec1d799df6963f04893a470672ed99"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.10/yomi-0.5.10-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "add6b9f8502eaec1b6f73acaf8546e4fdb3b539292601dede5bcc0f60a890c0a"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
