class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.16/yomi-0.6.16-aarch64-apple-darwin.tar.gz"
      sha256 "a3912160c505bc0f577ee50e6c95537cd886fefa7536e43e67820f5fb577d5fa"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.16/yomi-0.6.16-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9f23e87d3ca229493d2f67b0f7e0069c406ca15dd745611a09e8c245dd4f568d"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
