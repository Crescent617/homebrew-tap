class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.32/yomi-0.11.32-aarch64-apple-darwin.tar.gz"
      sha256 "373bb961d299265c96976057134c27bf4e0d3c0a86328e1f689546b448bcc63d"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
