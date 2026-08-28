class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.2/yomi-0.10.2-aarch64-apple-darwin.tar.gz"
      sha256 "c0744b9cb304e3fc491f2f9448190868e08f87f29dd18d0474a5e2972cad30e4"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.2/yomi-0.10.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b7d2bc3768ad2a71413b9ba9d7779dbd0e0a90c8ab48e6b44981263e594b6c52"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
