class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.78"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.78/yomi-0.7.78-aarch64-apple-darwin.tar.gz"
      sha256 "5002f3423e5e75a81160632fa5bed8e1405559dabbb0cfdd1747d2d1df8c4055"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.78/yomi-0.7.78-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3e897cdd4d41050440d5b6bce85e6543558dd7ff9cda2dd7fca44d10577459d1"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
