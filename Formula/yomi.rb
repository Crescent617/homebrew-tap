class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.48/yomi-0.10.48-aarch64-apple-darwin.tar.gz"
      sha256 "3741087637a804943709a390c0e0ccb892b88f830c72eadf9b8a30d3c2fa0d33"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.48/yomi-0.10.48-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "eb39fab0abbb4902499618deb9c789bdbd1b432b48f7bda7f4fd32eff3b67819"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
