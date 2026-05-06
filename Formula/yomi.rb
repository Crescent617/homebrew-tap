class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.5/yomi-0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "280138bbf20dee0a43335806a44949342a5ab3cd0d34c05c4f394268f40e2a46"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.5/yomi-0.2.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9aba2f7de343fdf1c081ec6d090028af8032724cffbf9587e78f01da8c4c55d4"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
