class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.6/yomi-0.7.6-aarch64-apple-darwin.tar.gz"
      sha256 "85886826e1167fbd2513388e7a1860523437414ace7496de675083a2eb8a973e"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.6/yomi-0.7.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "95a94ae4311b620de66196dd002a10944ee28bbcb136db9c8c1384b6c33f6e64"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
