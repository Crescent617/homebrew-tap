class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.97"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.97/yomi-0.7.97-aarch64-apple-darwin.tar.gz"
      sha256 "3e379c4a22a0dffe8708bbd2a4979bae781567bedbf0639de0a8bc3813e77643"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.97/yomi-0.7.97-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2be5a8604a351025ffedf4ba8fd8c09e64fe188be41a19b06976b6093eeecce8"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
