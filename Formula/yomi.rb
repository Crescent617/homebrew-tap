class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.75"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.75/yomi-0.7.75-aarch64-apple-darwin.tar.gz"
      sha256 "d64e1b9211b33ae2781ac558cc154c711148e058daeabf87a216d48ae63928a9"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.75/yomi-0.7.75-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a052edc31343d3ee5df655300121ee0ddf8f9d711abc9c07482026ab8551f0aa"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
