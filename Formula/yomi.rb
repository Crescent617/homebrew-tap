class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.7/yomi-0.7.7-aarch64-apple-darwin.tar.gz"
      sha256 "5fc4c8f5fd7dbeeffaaa784f935160f3746551112b9fc03f3ba12091951d04f3"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.7/yomi-0.7.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e43089d8b2e8f549b816ecf4f3719612786b59fd7e39d6777979b25d7d2a0268"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
