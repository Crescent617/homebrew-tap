class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.6/yomi-0.11.6-aarch64-apple-darwin.tar.gz"
      sha256 "2fae0b29da3ead66d0181d180ae641de5d1ac1abeab915b7490cf1fc0ce1b537"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
