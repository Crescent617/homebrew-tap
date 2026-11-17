class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.27/yomi-0.11.27-aarch64-apple-darwin.tar.gz"
      sha256 "36058725d67b439c015b02c897808b039ef1bf7999ed2e086afe7c10b790fb4c"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
