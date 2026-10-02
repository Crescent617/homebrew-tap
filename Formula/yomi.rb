class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.0/yomi-0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "495a701739fc56fcf5b2fa0438f6b03fabf10d8ff1bb91123b64bfc34e3ec5cd"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
