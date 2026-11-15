class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.26/yomi-0.11.26-aarch64-apple-darwin.tar.gz"
      sha256 "0377d3ee11db84963b9630a3fcc491116933678d37e7bfd6034b9ca46af9a03f"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
