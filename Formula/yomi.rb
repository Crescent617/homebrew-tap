class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.12/yomi-0.6.12-aarch64-apple-darwin.tar.gz"
      sha256 "84b8013357e8f7512ba893ab19d956fd441e4ed58e6f4629953bc2282f3756c1"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.12/yomi-0.6.12-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fbc17f33de70f1917783d72868eea93b185235e18cba0ebf4dbd59cb4254b614"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
