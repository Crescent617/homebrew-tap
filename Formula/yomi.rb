class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.24/yomi-0.5.24-aarch64-apple-darwin.tar.gz"
      sha256 "09b19ed9e301643e829b44137cd25d7d9f54b9e992ed0e86f57792346083f599"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.24/yomi-0.5.24-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e2d1b9ba4bdc1281637b25f45fab63bb36e601ce3f0ea323c68a42197be95253"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
