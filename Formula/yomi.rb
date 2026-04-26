class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.1.23/yomi-0.1.23-aarch64-apple-darwin.tar.gz"
      sha256 "6baa68119d7701b08b573d709062bfd0dd2373f6cfb4176fc38bc2b473679e41"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.1.23/yomi-0.1.23-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9e8e1f6f74422a78c4bc4f18db8e39ca4ccc41ebc6cda47a538e1c0f8c520efe"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
