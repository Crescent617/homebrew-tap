class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.49/yomi-0.2.49-aarch64-apple-darwin.tar.gz"
      sha256 "ae205675a93cd604da714a61135199c021e2dab89592d11a933ce032cfadf0c5"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.49/yomi-0.2.49-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bed41302fa0572b4c675404042e54529b98b1f5cb0c4f5560f60dabb095ccb56"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
