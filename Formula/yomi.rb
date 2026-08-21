class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.5/yomi-0.9.5-aarch64-apple-darwin.tar.gz"
      sha256 "193030413035660987282ed5aa1a38dd4132559fbc9da6afdbdb1c84eb2358b1"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.5/yomi-0.9.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ee4611a5db2bdf2d83dc66b3036eb19dbfaacb984c2692fa8d103d4f3edbe783"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
