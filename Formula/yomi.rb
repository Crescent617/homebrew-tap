class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.6/yomi-0.10.6-aarch64-apple-darwin.tar.gz"
      sha256 "7cc52402aa15836078a26486f266db40ff095ef670ba95e819edbe1b0e823da9"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.6/yomi-0.10.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f6fa81d5423934786ec7a512fa65b3a84715a7ed0c40388f144490e85430e770"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
