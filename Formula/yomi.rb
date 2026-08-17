class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.89"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.89/yomi-0.7.89-aarch64-apple-darwin.tar.gz"
      sha256 "7231700640c41ba818d8f8d7fd7bf80f7dd244f967d015dfdb87fbe587c96f5f"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.89/yomi-0.7.89-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ddd15e6b00344a52d51a89c816f65336274d47efe7ba36016b6591e853384d3a"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
