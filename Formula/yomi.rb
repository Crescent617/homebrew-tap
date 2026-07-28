class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.17/yomi-0.7.17-aarch64-apple-darwin.tar.gz"
      sha256 "ebeb56f1cac08c6427f8656157317a4da1e55a0d1b7287aacc48d47cb38bde45"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.17/yomi-0.7.17-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "08c5accb3f8aff401cd03f4f25637b7fd668afbc8cd7300990fc54a03144ca8c"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
