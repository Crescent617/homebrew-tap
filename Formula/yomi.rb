class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.34/yomi-0.2.34-aarch64-apple-darwin.tar.gz"
      sha256 "177200c2e529bbb89b6856091914fdb2176acb886c4f12d8daecc8e507877d07"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.34/yomi-0.2.34-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "77045f71e2e89a2b8a017512ea6ee995587633c6e3e2c84dd6d0e9759b5a4164"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
