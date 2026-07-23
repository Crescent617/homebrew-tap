class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.20/yomi-0.6.20-aarch64-apple-darwin.tar.gz"
      sha256 "6097ec1181c9a901fa9b3109fbed803c55fceb7af80cee5038650de661acfb16"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.20/yomi-0.6.20-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d26d21741863589d217e55df5b73ec10a3f7343c1f512f4556d8fe370739706e"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
