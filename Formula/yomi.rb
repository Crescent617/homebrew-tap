class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.5/yomi-0.5.5-aarch64-apple-darwin.tar.gz"
      sha256 "65856becf12a2b0d5cf765f9f02ea163b5a6aa9aa8b48f91978fae5a75b753ea"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.5/yomi-0.5.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d25d7be8feeb839d19d6b81e49cdccd30ddf58baaeefaaf52201b0988fbdc7f9"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
