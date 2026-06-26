class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.45/yomi-0.2.45-aarch64-apple-darwin.tar.gz"
      sha256 "c8823c9de3a3938ad3862c9bec9a18dfe53a0dbb10a61a177b139020076a106b"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.45/yomi-0.2.45-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bac77d1077b17cf467aabfe5dfbb6e9a1a2088f97ea13afe90894a1c621ecd1d"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
