class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.15/yomi-0.7.15-aarch64-apple-darwin.tar.gz"
      sha256 "0fb12c64fc307c88050ae9ded307e533cf57759b19d70b003b4dc663b1a8b817"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.15/yomi-0.7.15-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "686f19581ac094969036be58adb83043d40c948553839d5701f58ef4385cbc28"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
