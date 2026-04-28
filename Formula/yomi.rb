class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.1.31/yomi-0.1.31-aarch64-apple-darwin.tar.gz"
      sha256 "afaf3068dfe089970914a632aa8cfc57226f696c0095c28bc25f07bd03f1c51c"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.1.31/yomi-0.1.31-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3283082fc03c1412e385e0adb18a69482aafb493ce3aa5f2e426588f2f35a7e8"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
