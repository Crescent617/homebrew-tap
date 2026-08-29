class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.5/yomi-0.10.5-aarch64-apple-darwin.tar.gz"
      sha256 "fb19b3a32f3b5e43e389df38e8cc164ded5a78073613949bca28fe42bd30cbe2"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.5/yomi-0.10.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ac98fd3e3a56b49457d5ce39a2a71665cd2f1ea6f8f9a5cb3e953d4068f36674"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
