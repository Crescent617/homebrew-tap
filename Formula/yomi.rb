class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.20/yomi-0.9.20-aarch64-apple-darwin.tar.gz"
      sha256 "fbd40c2ead1555912b588ae96504833bea512a43c32df8bd376f670dc7f94bda"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.20/yomi-0.9.20-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "df284badb45fc940cc34c8ee59ec7d041e0e47a7faa0eb8f533f78d694327f74"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
