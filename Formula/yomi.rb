class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.28/yomi-0.5.28-aarch64-apple-darwin.tar.gz"
      sha256 "a2f1c66e2d05e715f23e320864855ac47a6c31210faab510f91606934625d884"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.28/yomi-0.5.28-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a5b581001ce96058840d92ca29bd1f62de298fffa17abc977a00d1de04797017"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
