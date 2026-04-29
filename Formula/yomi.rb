class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.1.33/yomi-0.1.33-aarch64-apple-darwin.tar.gz"
      sha256 "957092d9a22915990ef6967d3fbb664361c1e243896d62dceb75020c8ab88182"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.1.33/yomi-0.1.33-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e4820f9cf14f5f78c74d4e827664c20178ec59478160005ef3f8490e1c29f202"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
