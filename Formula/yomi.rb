class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.91"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.91/yomi-0.7.91-aarch64-apple-darwin.tar.gz"
      sha256 "4536f61597f16718b250cb7249320fe47be871a3df11c4156486fb3d41cd3f28"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.91/yomi-0.7.91-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ad7b845e2026fb72517e018a094d76c5fd5889b2d48233da88c54f10102768cf"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
