class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.55"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.55/yomi-0.10.55-aarch64-apple-darwin.tar.gz"
      sha256 "9b4b59ca14549506137f809e5910d659f1ca7e4b8ef47f83bc76f8ccf385df2c"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
