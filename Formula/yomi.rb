class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.24/yomi-0.10.24-aarch64-apple-darwin.tar.gz"
      sha256 "d81a561f9a11c0e90ea7b6c2119f86ba1433acecf5da1db3cc26261377a7a294"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.24/yomi-0.10.24-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2adc5328abbec323bb36843664cfe69b3925f77e2a55c880dcbb797e91bd5105"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
