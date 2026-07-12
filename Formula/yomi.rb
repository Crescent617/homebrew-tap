class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.7/yomi-0.5.7-aarch64-apple-darwin.tar.gz"
      sha256 "3a952f33cbd5bc26f4686cd796bd3cf60e31d4ef1194ca1df940fca7b2f277f0"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.7/yomi-0.5.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4526b227594abb48ef8acdc73535cab00093592e62120d6d548c0c0db875059d"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
