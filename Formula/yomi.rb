class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.54"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.54/yomi-0.2.54-aarch64-apple-darwin.tar.gz"
      sha256 "dfa3e0c088df72b26baf066228689dae5b5c0ecf4e68d5a38e21e12a73069bae"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.54/yomi-0.2.54-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "553a877f8733c15233d2aee3286ed1a5960158e5eb0058333ef2df175590c7f4"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
