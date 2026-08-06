class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.57"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.57/yomi-0.7.57-aarch64-apple-darwin.tar.gz"
      sha256 "6b6058108d8adb8e0da10e0a2c943d8b8f9838f2a415bca93c07b41ed53a707f"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.57/yomi-0.7.57-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5ac23f0a57d13f336d00bb5075243126b382e7e53aacc475afbd67b1d96f5696"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
