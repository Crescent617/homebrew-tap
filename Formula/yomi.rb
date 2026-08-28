class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.23/yomi-0.9.23-aarch64-apple-darwin.tar.gz"
      sha256 "1580e0568f1f6804f0d2b37c63a98b217f2fae97974edc97d53f9a18e52b29d6"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.23/yomi-0.9.23-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6dba9f0a2b18cd89ed78928da969ebb86507903f8e4b1a8d3791ad33c810f4c4"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
