class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.53"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.53/yomi-0.2.53-aarch64-apple-darwin.tar.gz"
      sha256 "916acecd3be9c7c7925fff02a881cf3c9f717a7c7564c8ce6b037c85d28f5a12"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.53/yomi-0.2.53-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "58b09a147b992959cd77a2fd9f482f19586518a81159a24ccb95fa09810f6513"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
