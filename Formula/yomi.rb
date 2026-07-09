class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.4.2/yomi-0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "9636dd80f64575c1227bb654f44306676acd228f2b7d37f8c7daeddd67fb9de5"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.4.2/yomi-0.4.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0a57d1058b82323debe83f940e666ff499921c9be8121b8e7dd89460da285c85"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
