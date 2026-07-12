class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.3/yomi-0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "3638a1be89ccac7aac462c16e036d6d6cc694b032a8905838e2631c669194c66"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.3/yomi-0.5.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ef57a6c6e4ce10aafb849340bb177ef80bb30d99ed477957003ef92f14f9e00b"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
