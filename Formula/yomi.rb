class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.12/yomi-0.9.12-aarch64-apple-darwin.tar.gz"
      sha256 "c45a027d776ff09f84b62c23c7b24ee334a0380db61ef89abccc7db53584e6c5"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.12/yomi-0.9.12-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fd2c3c575177b218856d3dd29014399aaa6d76db0abf463163f11adfb18bac0a"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
