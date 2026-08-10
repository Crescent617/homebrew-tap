class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.69"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.69/yomi-0.7.69-aarch64-apple-darwin.tar.gz"
      sha256 "6dd64bdda0842c4c9db7c8e1d005ddf67013330bab228134c0ef8403a430d5de"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.69/yomi-0.7.69-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5f1abda59123e18e838c951e9791bec6eaa319776c99693a8bdb0f9ce408e16d"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
