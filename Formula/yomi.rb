class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.15/yomi-0.5.15-aarch64-apple-darwin.tar.gz"
      sha256 "4861ba6080cde5dde0e5b7719b935e9dd8f1c780af7b4c0547b8375880da6a78"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.15/yomi-0.5.15-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "31a991c5c96671c24701562dc28d7ff43309ab94bafe3efbdf68aead4b3e64e5"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
