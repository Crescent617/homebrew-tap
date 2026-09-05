class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.22/yomi-0.10.22-aarch64-apple-darwin.tar.gz"
      sha256 "3bf299b76a3ed52b1b0b1dfc128be579c6053f7ebe12501a81819ceeea04b6b1"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.22/yomi-0.10.22-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f85e31018fb5f17260396e92700e129459be982cb32104ceb507bc32ddbed853"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
