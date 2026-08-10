class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.64"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.64/yomi-0.7.64-aarch64-apple-darwin.tar.gz"
      sha256 "64383b8368039f9fac2d4e050a3ffbaaf79ec3913f108d57d71371ed60259ef6"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.64/yomi-0.7.64-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4cc37944515a492a4e9d2d7ec861dbdd2e7ef38f7f2dfed149ab43ac7c88c92b"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
