class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.2/yomi-0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "331029c4b68a7e4d82d74a93289a0c83ce8fe3e645cd937b5d594de61b68f62c"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.2/yomi-0.5.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "14ad4943c5dfa106686475bb06f37a666900d79193bc683d89d0ce728309c641"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
