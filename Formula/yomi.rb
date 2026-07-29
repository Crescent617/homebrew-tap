class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.23/yomi-0.7.23-aarch64-apple-darwin.tar.gz"
      sha256 "6794086e30b2ccae8e7ff781e3ac33f205e2da1ca799f65f54bd1b4d91b44f55"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.23/yomi-0.7.23-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a04a67b4c4151a93469b9c93c57b3309d2481838241eec364f2065fa0ad73028"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
