class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.10/yomi-0.11.10-aarch64-apple-darwin.tar.gz"
      sha256 "c7aafd8e184105f814137978a98643610fed780dc5c2d93f27a7f94145f0ceb2"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
