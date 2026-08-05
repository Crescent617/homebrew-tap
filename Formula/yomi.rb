class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.48/yomi-0.7.48-aarch64-apple-darwin.tar.gz"
      sha256 "afe27b1a9eae861e8cde6a8d5a40e916be9ed320941fb8fb15f5617f9fae1ded"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.48/yomi-0.7.48-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a960e67986173ae38829299df6a7416c30bc42f79b8c31a937251a7b7832ce10"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
