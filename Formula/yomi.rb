class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.58"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.58/yomi-0.10.58-aarch64-apple-darwin.tar.gz"
      sha256 "6e518cbc1d26346cd29036a7969ff4ff83f3defc77fffaf25cb6f3e33486a27c"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
