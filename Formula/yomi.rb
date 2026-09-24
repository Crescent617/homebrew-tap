class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.39/yomi-0.10.39-aarch64-apple-darwin.tar.gz"
      sha256 "cbd2b24f9984c6997fa2b206c1ab288b45cdb5d001b82f0aa53f39fb4c23498f"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.39/yomi-0.10.39-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "395a1d33c7808d00c74a4c7eae6ae7bc247aa615544202f2e46c122a850d95d6"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
