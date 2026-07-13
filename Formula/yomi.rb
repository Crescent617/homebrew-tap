class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.8/yomi-0.5.8-aarch64-apple-darwin.tar.gz"
      sha256 "77b9848cf958bfc687b443404cfa9016e80507356bea833611470dedc998dca4"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.8/yomi-0.5.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9e13dd946eb2ebe3c00cf36a249ddb65be08c4e4cf9485617c8b9e31d5e509d6"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
