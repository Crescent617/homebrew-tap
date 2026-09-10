class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.28/yomi-0.10.28-aarch64-apple-darwin.tar.gz"
      sha256 "36d2483b5c660fc6dc91d52a243670a5bbdb0b7e847703ffd61439dbc953c829"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.28/yomi-0.10.28-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "085045b06efef1c0e7075450e12b68b1e416193a32050b2437267511c3ae8c73"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
