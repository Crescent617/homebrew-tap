class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.54"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.54/yomi-0.7.54-aarch64-apple-darwin.tar.gz"
      sha256 "70587ae3883ba2da8f993268b5c4529447878fcc92e8c2590ce5dbbd652a1cdc"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.54/yomi-0.7.54-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ab9aca587fb6f6e10e24f66a35d6a5e25f811153005b9adcea25f207bf77b744"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
