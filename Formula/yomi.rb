class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.47/yomi-0.10.47-aarch64-apple-darwin.tar.gz"
      sha256 "f83d2d937a077a23d04924d56da0f62dd082608b088167fd03eaa6a1b895d76c"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.47/yomi-0.10.47-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "acb1645c0de47976ccd00e4f2d52e01093d15e48a7d4dcb7ffd772a3f346a792"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
