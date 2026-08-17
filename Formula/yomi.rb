class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.92"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.92/yomi-0.7.92-aarch64-apple-darwin.tar.gz"
      sha256 "492dbfa8bd44e5c6a87c3b7905ee7eb29719932addbb45fff65fa3f674b35dcf"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.92/yomi-0.7.92-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "117737598d23ee839dbb13458a20ca96c6d3ea07781c519ac8c7c93e035c706e"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
