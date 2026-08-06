class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.58"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.58/yomi-0.7.58-aarch64-apple-darwin.tar.gz"
      sha256 "94fd9208f5bb754005e1a880b4c48ced28c06a77bbabf64e4c5fc48393222fcc"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.58/yomi-0.7.58-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3e119d6f8bb2885384cb33c0c8aa711b4c9b6101c04db5336a5c9474dbb10bf6"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
