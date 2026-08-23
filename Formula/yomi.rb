class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.13/yomi-0.9.13-aarch64-apple-darwin.tar.gz"
      sha256 "c27deb543cc1430acfa322b19bd99f3c7e75e115dee5c295d8af6b83fb51cf67"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.13/yomi-0.9.13-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2a1a15d904de1d89b2313ff8efd34c72cf4a49fe39691acffc456174675532d1"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
