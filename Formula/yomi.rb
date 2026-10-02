class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.56"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.56/yomi-0.10.56-aarch64-apple-darwin.tar.gz"
      sha256 "d3b121a21dd08a8a78f0140e86f0a6827cd3ee4d2dbde2274969777dcf38fff2"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
