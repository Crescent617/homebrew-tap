class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.5/yomi-0.11.5-aarch64-apple-darwin.tar.gz"
      sha256 "fdff8a55d34223a1553b42d4e6b84f7cb2eeb7608fdac236be6236c594f05b11"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
