class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.4/yomi-0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "cc3fdcd22cf468154bc2faf9db16cbb473dfc726e9831d1b4484e159f3024af2"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.4/yomi-0.2.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "28589bb4babdc90dec9e9b29c56b72e5bad90d8de9481cac133cc04e165fb8b2"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
