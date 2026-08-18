class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.95"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.95/yomi-0.7.95-aarch64-apple-darwin.tar.gz"
      sha256 "cebc515b9c45ee52884195407fdeef4ef31060c0fbae23efb46734d1c8704dde"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.95/yomi-0.7.95-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ff441071078f1eab0556bed71b16f72ad77ee2da67f1f6b12d0d52a42b829b0d"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
