class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.34/yomi-0.7.34-aarch64-apple-darwin.tar.gz"
      sha256 "193d15691261c170f6e0c4166beb8c4031521a452c50eb2b6c2408474e541ceb"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.34/yomi-0.7.34-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "77c3c391cd54ab177a4c45626a72a46f423e173eaecc014ca3b38ad938ddeefb"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
