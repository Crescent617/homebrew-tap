class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.15/yomi-0.11.15-aarch64-apple-darwin.tar.gz"
      sha256 "1a07ffb3afad8c9efb3a3645eb571d30a5330dd5465b4ab61b918f6565780fbf"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
