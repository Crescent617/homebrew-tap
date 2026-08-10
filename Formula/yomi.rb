class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.65"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.65/yomi-0.7.65-aarch64-apple-darwin.tar.gz"
      sha256 "2756962c131a26eda4cd2c8e0d0d6220f542ab0c0fcdbfc71abd872955379362"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.65/yomi-0.7.65-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cf122940906bdf53c83c91a3a5e1e265d3abc94facf5072c4352e8d259c7275a"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
