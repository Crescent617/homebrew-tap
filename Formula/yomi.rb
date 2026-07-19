class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.2/yomi-0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "b53049a74637635cea1c02847fe9efbbd20247893b50b0026e96ab4f0439474a"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.2/yomi-0.6.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7e2373ff79e8c0deb4256b4fd4e5b93d0500f629723d5b62ce360bbc389604bc"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
