class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.42/yomi-0.7.42-aarch64-apple-darwin.tar.gz"
      sha256 "16bd36190922366532277d7386f9e3cef23572f96da4df17761001a442094311"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.42/yomi-0.7.42-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2ef48511217cb374152e4dec91a15b58cb56927b6dfc44f327c26f80f24ca2d1"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
