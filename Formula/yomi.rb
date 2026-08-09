class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.61"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.61/yomi-0.7.61-aarch64-apple-darwin.tar.gz"
      sha256 "e481ac9d3b024134fa7a1a13f6f58d2e8666f7c4f36309284e91de091e8be161"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.61/yomi-0.7.61-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f1c0585dffe808283b940a2c45675f5cbaa545c1d7a1ed2a1815a64e84423380"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
