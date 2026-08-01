class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.36/yomi-0.7.36-aarch64-apple-darwin.tar.gz"
      sha256 "b9c441c636ade18b888ec75f5d9406208d826607c5595da66b16dd043252354a"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.36/yomi-0.7.36-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8ceee6c2731a06c091c76cfc8c1705a45ef3a879c3e54ba56d2c6fdf198d1862"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
