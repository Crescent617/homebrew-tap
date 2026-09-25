class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.44/yomi-0.10.44-aarch64-apple-darwin.tar.gz"
      sha256 "4617366ec2c5754c02de10cf4713eb8a177ccba18b34b357558652b5fafeddc5"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.44/yomi-0.10.44-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9f9ab692e492f4e515ca692e998348392059d33853c7bd6ca2c80e85c88678a1"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
