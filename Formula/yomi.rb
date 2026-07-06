class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.3.0/yomi-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "004dddc327f4826fec7cd6c9130313f1200fe1ff4903208ae4d267ea50acfab1"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.3.0/yomi-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "319f165cbe9788cdcef8a678f8899098c93ef254e89ee2cbf11edcdd71f405a5"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
