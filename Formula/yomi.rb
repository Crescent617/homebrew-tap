class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.59"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.59/yomi-0.7.59-aarch64-apple-darwin.tar.gz"
      sha256 "f73498c7667f657c18710079d15129d374d396db7644a025294670fe5904ad0d"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.59/yomi-0.7.59-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "faf539dcb3bb466eab74f18e4421df1c1cedd3d6711a59ded242350b4c8a441c"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
