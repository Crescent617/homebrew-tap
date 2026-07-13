class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.12/yomi-0.5.12-aarch64-apple-darwin.tar.gz"
      sha256 "ff32219a308da7743ccc27b83f0f16df3aa9eb1e5974c0bf38adf47b986991b3"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.12/yomi-0.5.12-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a2e796e853b43970c70a663a5c66e164bf35a8192aea0ec35e32af6ceb68a7c5"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
