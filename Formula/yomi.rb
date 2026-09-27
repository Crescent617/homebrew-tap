class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.50/yomi-0.10.50-aarch64-apple-darwin.tar.gz"
      sha256 "e82a96f62765817c9e0798b6620c6b3ad3e5304bd83e6734555cf0d2b6ce8038"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.50/yomi-0.10.50-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "32c309ad1f01a11b097fbb6c3a27e9485dab7096ab0ec646b7a6f424dce64275"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
