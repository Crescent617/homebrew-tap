class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.82"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.82/yomi-0.7.82-aarch64-apple-darwin.tar.gz"
      sha256 "263e57bd9d5a2c8d066437a37df06d234470b4791199b0411f2d868e0b44b437"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.82/yomi-0.7.82-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "603b45a7272e4fda38abdcbe8414909f81ff951aa02b22d215dd44114890b3af"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
