class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.6/yomi-0.5.6-aarch64-apple-darwin.tar.gz"
      sha256 "dd98ae8855421099e483718642014ed6946058ab8101c00e8e7d86606811b2f5"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.6/yomi-0.5.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5fe226f21c44f94cac78c592a09d309d079f0a31440f44fa9b2796e97625463e"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
