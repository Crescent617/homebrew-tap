class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.94"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.94/yomi-0.7.94-aarch64-apple-darwin.tar.gz"
      sha256 "180187282e69eb14a41bcec2f9822603c4a4ca6c34ded894e59530bdb05c9fab"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.94/yomi-0.7.94-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "357f03379de13d4ee8c08387407a8b6d41492547a8a28ddb851c7967aad6acbe"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
