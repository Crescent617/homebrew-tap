class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.12/yomi-0.10.12-aarch64-apple-darwin.tar.gz"
      sha256 "36831f3b92282ab89305eb4811e46b42da759dc2f7a50c88642ac4022db8c54e"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.12/yomi-0.10.12-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6f8f1ff51b21d9c2d91754932062f94c9d6f126ae4e729bbc2f18bb1dbfd989e"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
