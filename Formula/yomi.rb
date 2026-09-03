class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.15/yomi-0.10.15-aarch64-apple-darwin.tar.gz"
      sha256 "2d1112192d795b84f1812cd85fa3e2d24e9a2997cd59f3aa06b6bed9ff00ac10"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.15/yomi-0.10.15-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ea84b6153e977740c941fe5543a3a6d5fb0f40b77101ab6e75f519a00025077a"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
