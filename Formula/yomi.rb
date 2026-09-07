class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.27/yomi-0.10.27-aarch64-apple-darwin.tar.gz"
      sha256 "5659590e031056159ab17a4ad9e75160cfe521f333dae4d2a6084270a6cba536"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.27/yomi-0.10.27-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9e844e688c9610bb487c4f8c9a5e16d7cbd4aaa3ce3759051fb290df8c977e41"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
