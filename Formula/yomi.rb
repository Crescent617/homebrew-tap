class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.3.2/yomi-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "06965bffb37ffbea756dc6fd9d88d3c02f47578ef6de8688517c487714620331"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.3.2/yomi-0.3.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a3770fb09e564453c14a87ec12a40a396ea4cad5e72ef1325cd71872e9cecc4e"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
