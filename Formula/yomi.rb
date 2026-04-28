class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.1.30/yomi-0.1.30-aarch64-apple-darwin.tar.gz"
      sha256 "b57c3ccc5fa987b6fe96e16acb25518f0d82f7bb529e0fe74f2626f85f072774"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.1.30/yomi-0.1.30-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "aaed60736efbef025c6b69c915b934a5bba1edff49f4a153adb3188ed91e8126"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
