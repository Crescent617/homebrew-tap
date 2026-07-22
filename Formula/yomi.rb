class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.15/yomi-0.6.15-aarch64-apple-darwin.tar.gz"
      sha256 "7fef0628b79110f670308eafe38e5840efbf939f876250b2413139f13275b253"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.15/yomi-0.6.15-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "12308b923c95db437eda1b3ebc81074622bea5d117ca9f0b35c87487504490b0"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
