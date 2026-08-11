class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.70"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.70/yomi-0.7.70-aarch64-apple-darwin.tar.gz"
      sha256 "582038dd184d60803037a1ac4be0f9f6b869d819f57a51596c8ca27eea201b05"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.70/yomi-0.7.70-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cf4d93f04eaf8625fbfe3b0e257e9ad71be66ebb582d4125046ae6b4775c1a9c"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
