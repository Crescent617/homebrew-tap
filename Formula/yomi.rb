class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.10/yomi-0.9.10-aarch64-apple-darwin.tar.gz"
      sha256 "55f7b4082b3292d241d15dbe33e3bc915264d4fc115e2010f5b7bd29ec094047"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.10/yomi-0.9.10-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ef71a968f26589bde0c0d8cec2b5d5a421b4aec21f235488b057b3e855ae866f"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
