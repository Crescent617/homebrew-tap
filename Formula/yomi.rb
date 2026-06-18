class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.44/yomi-0.2.44-aarch64-apple-darwin.tar.gz"
      sha256 "26323f347afbf6396face3ed31ac904dc6c5c7974bd1df9e8d12b17c18980252"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.44/yomi-0.2.44-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5452d4000fcef2fa3d9ec9ae41ee18cea25a1b3a59041082c7cfc4301e8c156f"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
