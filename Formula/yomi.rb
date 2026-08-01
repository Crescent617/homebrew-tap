class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.37/yomi-0.7.37-aarch64-apple-darwin.tar.gz"
      sha256 "121a2de826f3634eabeb86841a36a7f4e38f04c454da22960c693d3d5253c414"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.37/yomi-0.7.37-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3891f167d8c0bfaf7738ac9371912fb8fd81b46e6c79feefba87f1b99aa0db28"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
