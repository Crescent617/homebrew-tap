class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.53"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.53/yomi-0.7.53-aarch64-apple-darwin.tar.gz"
      sha256 "8484939e059b8bc753572bfc4d62484bf4d545f62f8fdcd4e3b68b6bb67c441b"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.53/yomi-0.7.53-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e2f4c7f9013583c99e16a97969b83bb4ba58bec469f17ee32b0de6c8f0e51058"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
