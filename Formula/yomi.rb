class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.87"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.87/yomi-0.7.87-aarch64-apple-darwin.tar.gz"
      sha256 "cd73dd9722149490f1a9f83cd2db6e6d494516826006a8883c602e1d1bc6d160"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.87/yomi-0.7.87-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "79a4a2f8e9c6fff9c900998065dadb8b485420f4b7e061394c9160ba93f22375"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
