class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.26/yomi-0.10.26-aarch64-apple-darwin.tar.gz"
      sha256 "2187fdeca30d6c236be2d004b70d85bf2e1c87f99597ff21ad4b8218f8d6fc26"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.26/yomi-0.10.26-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b639548e07cc8defe3ef4202e93b7929d3283128b0d66a6c678e3c644f157b85"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
