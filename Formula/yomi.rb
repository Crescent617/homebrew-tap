class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.37/yomi-0.2.37-aarch64-apple-darwin.tar.gz"
      sha256 "4a680b560e78628f11f3c5033249127751b98a1fd7e10d7912816d30124ade45"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.37/yomi-0.2.37-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0e604c3b56482f8efac35ae8b4b77b11853474add92a79d5d7d8f3b808a8e635"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
