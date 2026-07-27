class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.13/yomi-0.7.13-aarch64-apple-darwin.tar.gz"
      sha256 "f8c9e1ccf9ef533bf58fb45de868e8804ce9eb1d34408dac66083a40b23d23fd"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.13/yomi-0.7.13-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "43d71f07c5edf892dd3ac78b9a04b4d27c4516ccf05d07d0cb872da273ce0740"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
