class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.20/yomi-0.11.20-aarch64-apple-darwin.tar.gz"
      sha256 "198eac94515565736de5ff83fe3608acfbb1e952c45b5d400e4bc4428f2df782"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
