class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.24/yomi-0.7.24-aarch64-apple-darwin.tar.gz"
      sha256 "e2d2f8e9e2e95f1a582f5ceb15e054aa124efdac085130a820440212b0c0654b"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.24/yomi-0.7.24-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "133d37f816d9f20433d4b9972b51fa9286f1e23fa001603c6738031131f179f4"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
