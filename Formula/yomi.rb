class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.3.1/yomi-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "8d7ec3603817bfd6f7757c1c05246f3471ed7eba124639a949061f6c7a838430"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.3.1/yomi-0.3.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6a688a516d0b4c4ebc09a4399e8365cf579062cf0ad33db755262932911706f1"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
