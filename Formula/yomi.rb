class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.26/yomi-0.2.26-aarch64-apple-darwin.tar.gz"
      sha256 "bfc4d74548a10f06124d9b49f3c6c0d0c1937e3af37dede118711dafe2148987"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.26/yomi-0.2.26-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6ad14b55b6ac5245e433c977122cf3d352e7c8939702b185b09edbce77d7ad4e"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
