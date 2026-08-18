class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.98"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.98/yomi-0.7.98-aarch64-apple-darwin.tar.gz"
      sha256 "ff7f6fca4b16f18dd3f475bf80c9da7a409c0f8a74b71f666679ce6c83bdfb04"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.98/yomi-0.7.98-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "87f0c1551598b1bcfe35e795aab3231189832ebd7b77328cab09ac6893acc1fa"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
