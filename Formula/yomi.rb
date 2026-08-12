class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.74"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.74/yomi-0.7.74-aarch64-apple-darwin.tar.gz"
      sha256 "afef9c102dd429a65f6d8dcdd12f683d58e9c6819adba0273277b969a87beba4"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.74/yomi-0.7.74-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fe318ca8a40301ba95e8822dfb3cc24f02a52855e2351f03a3a79bcb069cc014"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
