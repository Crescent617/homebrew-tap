class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.11/yomi-0.11.11-aarch64-apple-darwin.tar.gz"
      sha256 "6603874caf618ccf2a2410a4b353cc43d9c60dc4b2ce46c0e3f4d407fad07936"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
