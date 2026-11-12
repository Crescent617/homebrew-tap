class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.24/yomi-0.11.24-aarch64-apple-darwin.tar.gz"
      sha256 "3d7b3b810ba2a00d03e738de497d46c712ef1db0e091eefea73687b84cf7795f"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
