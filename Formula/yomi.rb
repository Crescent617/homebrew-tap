class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.90"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.90/yomi-0.7.90-aarch64-apple-darwin.tar.gz"
      sha256 "f17b04aa1732d144d2b81d18a05ecc7df86452d4eb32b45e5688545623a27211"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.90/yomi-0.7.90-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1ccd9186a339fed4b6243ef73c1fc83d04e5de0530a4dd2283eedcdbf66b75f4"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
