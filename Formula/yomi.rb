class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.31/yomi-0.7.31-aarch64-apple-darwin.tar.gz"
      sha256 "973d98fb29d57a40a8c4c7f18ea978246bea307a55743a6b0c09892850da0d78"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.31/yomi-0.7.31-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b6b6775d7b7166bf5de8b3d85434ea84f1a0e7783d7c8238d7b57da201df0f01"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
