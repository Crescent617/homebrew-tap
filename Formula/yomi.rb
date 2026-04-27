class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.1.28/yomi-0.1.28-aarch64-apple-darwin.tar.gz"
      sha256 "fc3d3c71c7cefb46801e7f700be920c9fec469a32f27e5046362eaae0575dcb7"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.1.28/yomi-0.1.28-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "18ccf70b049a5d149a998dcc0480278be578908fa9c231607c32f8004e288466"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
