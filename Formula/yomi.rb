class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.15/yomi-0.2.15-aarch64-apple-darwin.tar.gz"
      sha256 "bdf4ed6029837569a49aff2607c21f9d298aa7c55238ac2dccea5b50bc880e30"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.15/yomi-0.2.15-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c774ae8593d7452a44644720543173a5eadc885780645313d316840e13f74ba4"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
