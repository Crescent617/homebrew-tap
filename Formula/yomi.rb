class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.14/yomi-0.9.14-aarch64-apple-darwin.tar.gz"
      sha256 "3cfef8cb9a58887a95ddfa37f6995b13b8bc917e0daed65ff83868e515d91841"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.14/yomi-0.9.14-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d53b5cdc413df94b37b755ca33be7f17e4db31a38287c6e7613abb046a0aaebf"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
