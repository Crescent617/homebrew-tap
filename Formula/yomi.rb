class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.4.0/yomi-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "f28416c16b04084ee25ee08fb3aea942a75d4496f23751a68ef287675f00dd83"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.4.0/yomi-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e4db61ea5886a9407d305a94907139757ec925b34e5e02ca50df90a6b8982a69"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
