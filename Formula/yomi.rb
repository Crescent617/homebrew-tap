class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.43/yomi-0.10.43-aarch64-apple-darwin.tar.gz"
      sha256 "180cdb718d838f98abba122fea30b6bb216a804f7f913c9f95e1cac054148d63"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.43/yomi-0.10.43-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "644581a5e5f86a56d738d32d4c691239f8e3f035da541767f45cdf8c35679785"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
