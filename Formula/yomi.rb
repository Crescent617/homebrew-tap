class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.22/yomi-0.11.22-aarch64-apple-darwin.tar.gz"
      sha256 "4372c3339143d3e9574a22af16fc71b0029b73fd523c8f1adc6e8a7d054b87ca"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
