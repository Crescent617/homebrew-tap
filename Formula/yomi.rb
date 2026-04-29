class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.1.35/yomi-0.1.35-aarch64-apple-darwin.tar.gz"
      sha256 "cd6d8a90b2207cbc255ab710fe7bfe332e2e16127d68eb4d6b1554f7841a46d8"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.1.35/yomi-0.1.35-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "da5fbe4d675293368c95480eb314fda516c9942ac32f038faf722ec6b368c635"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
