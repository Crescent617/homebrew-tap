class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.53"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.53/yomi-0.10.53-aarch64-apple-darwin.tar.gz"
      sha256 "3a46ae70ade7c4e4033cd9a03099e6914304bfcf78b545dfa77ea918c3dd1ebe"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.53/yomi-0.10.53-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "895e14173ce42faabd0253830c5b23794860eddef1115082df6ca437fde76840"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
