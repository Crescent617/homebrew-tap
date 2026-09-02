class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.13/yomi-0.10.13-aarch64-apple-darwin.tar.gz"
      sha256 "7a34381c83acb3296026b381006d023fec90f1b1e49d07f4fb6b4346d6641b95"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.13/yomi-0.10.13-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "880e7be30199824762b30675efd96638712c2aa00da66131a9743e4b0412db70"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
