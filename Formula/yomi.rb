class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.3/yomi-0.9.3-aarch64-apple-darwin.tar.gz"
      sha256 "8babac02d3996d04ff61df84b25f6c610f35e641f08c2896f84889302de08bfa"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.3/yomi-0.9.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "20c8b3c8d52b704e3ef5ec5213794231f3c66cd9f44e26ee2b186ec73a4b1b89"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
