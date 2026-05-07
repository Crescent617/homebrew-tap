class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.8/yomi-0.2.8-aarch64-apple-darwin.tar.gz"
      sha256 "2f8cf0e000edf6a192aebd5604db944050dc7c1f68e77da0b83963489738646a"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.8/yomi-0.2.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "357c725c106d24b8f4c68c1abcb0b7d2bbac8f0e34d5c0528fee9cfa0161418d"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
