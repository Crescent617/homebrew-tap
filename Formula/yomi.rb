class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.33/yomi-0.7.33-aarch64-apple-darwin.tar.gz"
      sha256 "4f1460bf3f61d1d46aed21be4cf879d1aafc4b0ca7974cedb2cf3e1fccf058a8"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.33/yomi-0.7.33-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "da45e741068533058aee0e70100cba9ddaf4144c0367566862be417051456497"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
