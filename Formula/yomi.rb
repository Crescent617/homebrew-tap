class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.25/yomi-0.5.25-aarch64-apple-darwin.tar.gz"
      sha256 "a151f76d933e0e18b16e8cadc0003a36adc70d53103018684a6c9f8c719f7e63"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.25/yomi-0.5.25-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "40f997ef65865569d9917aaecf497f3eb557230ef7dc68c3696b6772b3256c4c"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
