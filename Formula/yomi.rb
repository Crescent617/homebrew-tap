class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.29/yomi-0.11.29-aarch64-apple-darwin.tar.gz"
      sha256 "46666753d652d20d91ee91ba090d9333e5ac021e1528fb87647a3bee14bafe97"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
