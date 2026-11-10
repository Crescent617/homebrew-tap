class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.23/yomi-0.11.23-aarch64-apple-darwin.tar.gz"
      sha256 "4dbb494e0a6cd40dccd0fc83000456cfc3add876480d75a27ef6187fd19bfbd0"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
