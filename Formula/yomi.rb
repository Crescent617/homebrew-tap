class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.19/yomi-0.11.19-aarch64-apple-darwin.tar.gz"
      sha256 "3d3def3ce00a6e6ce50cae746c869fbe299030ccad0a0b0ebf4d04f4dbe11db1"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
