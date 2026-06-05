class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.27/yomi-0.2.27-aarch64-apple-darwin.tar.gz"
      sha256 "8286d376a611f57f9ae92baa01ea683a0aa899072eaea1f9ca4209e17b4bd349"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.27/yomi-0.2.27-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d384411a5babf3276bdeb1e3566c8b5423eb772e5adeaceba3f679bdcb7ddcfa"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
