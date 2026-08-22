class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.7/yomi-0.9.7-aarch64-apple-darwin.tar.gz"
      sha256 "f91557f8234faf89dca5cca6a1e15f812f374d00e4560eb31a6d9e21d3d2f51c"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.7/yomi-0.9.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e2d105551ac6263efab7fa7093cc94c768154659a9bd46611f56ea4a9e9c3841"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
