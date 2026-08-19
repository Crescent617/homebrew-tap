class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.8.0/yomi-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "430cefe35f411ea1fea6687c80604f01f9592dcc4e01ffc6a10d79c26c894825"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.8.0/yomi-0.8.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "41844df9bb9188ee987ae2a5bb2fdb975da77660e96399b5e9a44ff93a650796"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
