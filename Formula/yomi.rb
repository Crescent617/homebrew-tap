class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.21/yomi-0.5.21-aarch64-apple-darwin.tar.gz"
      sha256 "bb39829ad1e922f366a01e3f9325d5d0df2bd838545da3e43f9aad2b8cde1616"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.21/yomi-0.5.21-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1270cbcf576703c0972d1e3304dff7fb549f9ac2b0a4b7c1cb30aa260eb5b212"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
