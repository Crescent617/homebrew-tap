class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.14/yomi-0.5.14-aarch64-apple-darwin.tar.gz"
      sha256 "e10a77b3a920d552da84a34b2b69eba63e5fa918acc8677249329a664dec4a8c"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.14/yomi-0.5.14-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "959e210016ff5f94bdd80b8b8ecb6e2447cb213144479ce1ec61f5a37b5a9f0d"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
