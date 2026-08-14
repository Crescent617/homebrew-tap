class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.80"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.80/yomi-0.7.80-aarch64-apple-darwin.tar.gz"
      sha256 "62bab83c86342f932edc457107af28575c2ca0d24642bece55b6a42f7f3a4205"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.80/yomi-0.7.80-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "21e3061e6d6a4caeec7b49b6752b87227265bc76b5b5c59ed8e1b16789e01ebf"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
