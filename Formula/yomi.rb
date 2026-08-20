class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.0/yomi-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "50d26fa0e9c8c0f72b83831fc3263782c3c2b84bf33f58b1f535d65942e8bfda"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.0/yomi-0.9.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d5acd055c42491d49c44e153ae09a7300ec30bdd0fdb6e2b847187fa05dc4601"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
