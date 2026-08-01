class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.35/yomi-0.7.35-aarch64-apple-darwin.tar.gz"
      sha256 "c524ac237ec1f26693148754ba4d6457156af2f7029a269b0512a968a6755299"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.35/yomi-0.7.35-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f50c853c521ae7e368cd73afda35058146c26ed7dec29d1b526e492e482bce0f"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
