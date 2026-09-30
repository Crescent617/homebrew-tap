class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.54"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.54/yomi-0.10.54-aarch64-apple-darwin.tar.gz"
      sha256 "955fd1aeb207068964716bfb7cc5a10c2b86684ddeb27e83fc4c0e339ef49d29"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
