class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.7/yomi-0.2.7-aarch64-apple-darwin.tar.gz"
      sha256 "9cd6e644428a161718b9c09dd4976f406daff1c3125db43f54403d4e15f01ed4"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.7/yomi-0.2.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "606793cd39f1bbf1a3607ca071fa171c38eb7183b9ebedb99b6a55c8d9de3d32"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
