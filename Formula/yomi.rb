class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.81"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.81/yomi-0.7.81-aarch64-apple-darwin.tar.gz"
      sha256 "2c1f3beb622fd8acf49be143150862eed2d6b78fe3ce7a571c4d9a7b659d56a7"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.81/yomi-0.7.81-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "82cc77682ea8c3986d38d9c4bb332fa689d24a83d4e54ea021ee88d3b1a100d8"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
