class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.8/yomi-0.9.8-aarch64-apple-darwin.tar.gz"
      sha256 "f52184087beff133b6944dac698a8abcb03d54c226456496a00850119e8e561f"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.8/yomi-0.9.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e14b60d476b545b0b92d87657485924bc4d5c053aa0e57fe7ec45fedb03df1fe"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
