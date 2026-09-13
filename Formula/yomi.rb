class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.33/yomi-0.10.33-aarch64-apple-darwin.tar.gz"
      sha256 "9084c2f955a6e463afa532803a44c41a029d9128113f02b019f3c9e2437548d4"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.33/yomi-0.10.33-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5e1659da998d44d9b1b8803c32f418f538172229b8192d6316f8ba7f3e512889"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
