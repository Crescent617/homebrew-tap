class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.5/yomi-0.6.5-aarch64-apple-darwin.tar.gz"
      sha256 "cb8f2b9c4417fd694c40e8b2fca7c3291f1a78689103b0b34050a62a8b8a3376"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.5/yomi-0.6.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9516b4521dd445b958f8a788e237d6d6513ada2b09fea8d67de3813a60952a19"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
