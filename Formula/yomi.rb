class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.1/yomi-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "d2b4685ec798722072b112604ad5d8b8772603e1cf63142df1119b14bc821749"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.1/yomi-0.7.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "62d0b142817425d9a1962c59720ea6cb0c08d016b11c0b380bac3da00977b2a2"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
