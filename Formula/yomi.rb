class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.43/yomi-0.2.43-aarch64-apple-darwin.tar.gz"
      sha256 "a603175ade325a54005cf84e356e13fe3501d2af70f4af9eb98e1f8aa5c02fd1"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.43/yomi-0.2.43-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "58eb74f3763f131cfb2cb33dee89c9ac2f0c52ef3eee4124292ab991a4b3162e"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
