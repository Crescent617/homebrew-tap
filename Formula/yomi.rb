class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.73"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.73/yomi-0.7.73-aarch64-apple-darwin.tar.gz"
      sha256 "83f7b33e54d96eaacbada2430728475ed6bc9028f0b47a65d1c35749830ebeaf"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.73/yomi-0.7.73-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "38a44269c6ba541819511f228a9bff83739ff70e3d943555f6c4f1542e034f6d"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
