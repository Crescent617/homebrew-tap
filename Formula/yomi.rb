class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.27/yomi-0.5.27-aarch64-apple-darwin.tar.gz"
      sha256 "e4014fb2bcedb43d898876d6b57441e6f7d07839d822f315416a8f19dd1d6aa7"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.27/yomi-0.5.27-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3e51092d5bfa372f31830124cc6da3f90b4bdb800667c9fb09db72da448bb34d"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
