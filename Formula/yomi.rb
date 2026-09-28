class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.51/yomi-0.10.51-aarch64-apple-darwin.tar.gz"
      sha256 "022792f43741919427311b389122c960fcb99d72cc8a9258ebf279e6e5142033"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.51/yomi-0.10.51-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "426c119f428648692fa51a83ce7cafb13943acf771d1eebf326283dfcb2fb823"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
