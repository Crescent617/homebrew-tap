class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.11/yomi-0.5.11-aarch64-apple-darwin.tar.gz"
      sha256 "85b875a4a15f1a7913c8b06fc01670070ca9a1647ccf32abf6767a6fef36ee37"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.11/yomi-0.5.11-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5acd4a0329f8aac4d14c7d1de18150f02a68b5d5624b735a3d7a9c5e372b8272"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
