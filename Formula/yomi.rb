class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.9/yomi-0.11.9-aarch64-apple-darwin.tar.gz"
      sha256 "781f17a99604767a2dba49c4fb8d935974cd03c7228c5de3ffbe0bb2127ed89e"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
