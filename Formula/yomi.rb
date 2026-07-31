class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.30/yomi-0.7.30-aarch64-apple-darwin.tar.gz"
      sha256 "7451205d09289eb9de4548df78f3881959fc68fba3bc55489928aef2b04f2f73"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.30/yomi-0.7.30-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "da394b812a91900871b6b6a31df8235609b20f8ab620be43adafded2b8cb6d16"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
