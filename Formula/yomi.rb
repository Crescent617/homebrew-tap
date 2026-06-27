class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.48/yomi-0.2.48-aarch64-apple-darwin.tar.gz"
      sha256 "4928e9a86883945a8791f6dd0ce1908a49b1288cd2433739ab1cce51738d3573"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.48/yomi-0.2.48-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "96ddb76ac23fca271df0418e1247ef13ca494cc0419208df2af93a8c022e090e"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
