class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.1/yomi-0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "94ff19ea29034c8e0c5b752d161e7a46266a9b54f960acaca867c1ce00063cd7"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
