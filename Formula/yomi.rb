class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.0/yomi-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "9ae5b15ddab885076949f4456b472f75c6f31128323f32b1939d40302f9c2dc4"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.0/yomi-0.10.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ca6085e7c47f2c1116b37c470aa2ebfe78b1ec1f258d2d51447babd52fe3e786"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
