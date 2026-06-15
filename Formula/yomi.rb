class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.40/yomi-0.2.40-aarch64-apple-darwin.tar.gz"
      sha256 "9e59267193c6281bc748741a3ba1c4300bfa67180ff8bace28852d41f1430c2a"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.40/yomi-0.2.40-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2db829c4ed7c2011c11e7f6c0e4c40be17e36d3dbc3234e0cf829d7e818bce86"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
