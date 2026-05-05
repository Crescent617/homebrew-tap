class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.3/yomi-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "a896e15f2b9edf77a75f9c9518f91f69b8265c8dcedae8dbc56945873188f259"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.3/yomi-0.2.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "26e945e149ba32a0368fba76f1b23dc41c674a65391ef9cc77c9a2158a2169f4"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
