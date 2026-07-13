class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.9/yomi-0.5.9-aarch64-apple-darwin.tar.gz"
      sha256 "47929d29796c4e5b13d5f9aad685a4afbfaa451536975dcc2c7e46de424000b5"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.9/yomi-0.5.9-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e0b6cef8f2da2f747dd9966518c041e1b57b3f3c3a98218d51c4c00a96204b44"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
